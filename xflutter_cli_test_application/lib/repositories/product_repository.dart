/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:dio/dio.dart';
import 'dart:async';
import 'base_repository.dart';
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/utilities/di/di.dart';
import 'package:xflutter_cli_test_application/network/rest_clients/product_rest_client/product_rest_client.dart';
import 'package:xflutter_cli_test_application/utilities/http/connectivity.dart';
import 'package:xflutter_cli_test_application/local/data_source/product_local_data_source.dart';

class ProductRepository extends BaseRepository {
  late final restClient = ProductRestClient(findInstance<Dio>());
  late final localDataSource = ProductLocalDataSource();

  
  Future<BaseResponse<Product>> create(Product data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.create(
        data: data.toJson(), 
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }
  
  Future<BaseResponse<Product>> update(String id, Product data) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.update(
        id: id, 
        data: data.toJson(), 
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Stream<BaseResponse<ListResponse<Product>>> findAll(int page, {String? query}) async* {
    final cancelToken = CancelToken();

    // get cached data
    final cached = localDataSource.findAll(page: page);
    if (cached.isNotEmpty) {
      yield BaseResponse(
        success: true,
        data: ListResponse(
          data: cached, 
          total: null, 
          cached: true,
        ),
      );
    }

    var success = true;
    // check if online
    if (await isConnectingToInternet()) {
      // fetch data from server
      final response = await getResponse(
        () => restClient.findAll(
          page: page, 
          query: query, 
          cancelToken: cancelToken,
        ),
        cancelToken: cancelToken,
      );
      success = response.success ?? success;
      yield response;

      // insert all new data in local-database
      if (response.data?.data != null) {
        localDataSource.insertAll(response.data!.data!, page: page);
      }
    }

    // emit value to notify listener that the operation is finished
    yield BaseResponse(success: success, data: null);
  }

  Future<BaseResponse<Product>> findOne(String id) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.findOne(
        id: id, 
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> delete(String id) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.delete(
        id: id, 
        cancelToken: cancelToken,
      ),
      cancelToken: cancelToken,
    );
  }
}