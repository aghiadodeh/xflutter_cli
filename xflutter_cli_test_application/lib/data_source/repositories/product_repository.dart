// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:xflutter_cli_test_application/data_source/repositories/base_repository.dart';
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/utilities/di/di.dart';
import 'package:xflutter_cli_test_application/data_source/remote/product_rest_client/product_rest_client.dart';
import 'package:xflutter_cli_test_application/utilities/http/connectivity.dart';
import 'package:xflutter_cli_test_application/data_source/local/providers/product_local_data_provider.dart';
import 'package:xflutter_cli_test_application/data_source/local/models/isar_models.dart';

class ProductRepository extends BaseRepository {
  late final restClient = ProductRestClient(findInstance<Dio>());
  late final localDataProvider = ProductLocalDataProvider();

  Future<BaseResponse<Product>> create(Product data) async {
    final cancelToken = CancelToken();
    final response = await getResponse(
      () => restClient.create(data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );

    if (response.data != null) {
      localDataProvider.insert(response.data!);
    }

    return response;
  }

  Future<BaseResponse<Product>> update(int? id, Product data) async {
    final cancelToken = CancelToken();
    final response = await getResponse(
      () => restClient.update(id: id, data: data.toJson(), cancelToken: cancelToken),
      cancelToken: cancelToken,
    );

    if (response.data != null) {
      localDataProvider.insert(response.data!);
    }

    return response;
  }

  Stream<BaseResponse<ListResponse<Product>>> findAll(int page, {String? query}) async* {
    final cancelToken = CancelToken();

    // get cached data
    final cached = localDataProvider.findAll(page: page).map((e) => e.fromIsar()).toList();
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
        localDataProvider.insertAll(response.data!.data!, page: page);
      }
    }

    // emit value to notify listener that the operation is finished
    yield BaseResponse(success: success, data: null);
  }

  Future<BaseResponse<Product>> findOne(int? id) {
    final cancelToken = CancelToken();
    return getResponse(
      () => restClient.findOne(id: id, cancelToken: cancelToken),
      cancelToken: cancelToken,
    );
  }

  Future<BaseResponse<dynamic>> delete(int? id) async {
    final cancelToken = CancelToken();
    final response = await getResponse(
      () => restClient.delete(id: id, cancelToken: cancelToken),
      cancelToken: cancelToken,
    );

    if (response.isSuccess) {
      localDataProvider.delete(id);
    }

    return response;
  }
}
