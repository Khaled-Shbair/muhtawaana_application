import 'package:dio/dio.dart';
import '/config/all_imports.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: RequestsApi.baseUrl)
abstract class AppApi {
  factory AppApi(Dio dio, {String baseUrl}) = _AppApi;

  @POST(RequestsApi.register)
  Future<SignUpResponse> signUp(
    @Field(ApiConstants.name) name,
    @Field(ApiConstants.email) email,
    @Field(ApiConstants.password) password,
    @Field(ApiConstants.phone) phone,
  );

  @POST(RequestsApi.login)
  Future<LoginResponse> login(
    @Field(ApiConstants.email) email,
    @Field(ApiConstants.password) password,
  );

  @GET(RequestsApi.home)
  Future<HomeResponse> getHomeData();

  @GET(RequestsApi.categories)
  Future<CategoriesResponse> getCategories();

  @GET(RequestsApi.category)
  Future<CategoryResponse> getCategory(@Path(ApiConstants.id) int id);

  @POST(RequestsApi.favorites)
  Future<FavoritesResponse> addOrDeleteFavoritesProduct(
    @Field(ApiConstants.productId) id,
  );

  @GET(RequestsApi.updateProfile)
  Future<EditProfileResponse> editProfile(
    @Field(ApiConstants.name) name,
    @Field(ApiConstants.email) email,
    @Field(ApiConstants.phone) phone,
    @Field(ApiConstants.image) image,
  );
}
