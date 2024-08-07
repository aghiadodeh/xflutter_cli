// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:xflutter_cli_test_application/models/models.dart';
import 'package:xflutter_cli_test_application/environment/environment.dart';

part 'category_rest_client.g.dart';

@RestApi()
abstract class CategoryRestClient {
  factory CategoryRestClient(Dio dio) = _CategoryRestClient;

  @POST("/category")
  Future<BaseResponse<Category>> create({
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @PUT("/category/{id}")
  Future<BaseResponse<Category>> update({
    @Path("id") required int? id,
    @Body() required Map<String, dynamic> data,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/category")
  Future<BaseResponse<ListResponse<Category>>> findAll({
    @Query("page") required int page,
    @Query("per_page") int perPage = Environment.perPage,
    @Query("search") String? query,
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET("/category/{id}")
  Future<BaseResponse<Category>> findOne({
    @Path("id") required int? id,
    @CancelRequest() CancelToken? cancelToken,
  });

  @DELETE("/category/{id}")
  Future<BaseResponse<dynamic>> delete({
    @Path("id") required int? id,
    @CancelRequest() CancelToken? cancelToken,
  });
}
