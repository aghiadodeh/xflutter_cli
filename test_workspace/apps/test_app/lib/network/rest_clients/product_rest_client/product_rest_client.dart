/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.com
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_app/models/models.dart';
import 'package:test_app/environment/environment.dart';

part 'product_rest_client.g.dart';

@RestApi()
abstract class ProductRestClient {
  factory ProductRestClient(Dio dio) = _ProductRestClient;

  @POST("/shop/products")
  Future<BaseResponse<Product>> create({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @PUT("/shop/products/{id}")
  Future<BaseResponse<Product>> update({
    @Path("id") required int? id,
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/shop/products")
  Future<BaseResponse<ListResponse<Product>>> findAll({
    @Query("page") required int page,
    @Query("limit") int perPage = Environment.perPage,
    @Query("search") String? query,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/shop/products/{id}")
  Future<BaseResponse<Product>> findOne({
    @Path("id") required int? id,
    @CancelRequest() CancelToken? cancelToken,
  });

  @DELETE("/shop/products/{id}")
  Future<BaseResponse<dynamic>> delete({
    @Path("id") required int? id,
    @CancelRequest() CancelToken? cancelToken,
  });
}
