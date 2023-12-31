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

  @POST(RequestsApi.changePassword)
  Future<ChangePasswordResponse> changePassword(
    @Field(ApiConstants.currentPassword) currentPassword,
    @Field(ApiConstants.newPassword) newPassword,
  );

  @GET(RequestsApi.profile)
  Future<ProfileResponse> getProfileData();

  @PUT(RequestsApi.updateProfile)
  Future<EditProfileResponse> editProfile(
    @Field(ApiConstants.name) name,
    @Field(ApiConstants.email) email,
    @Field(ApiConstants.phone) phone,
    @Field(ApiConstants.image) image,
  );

  @POST(RequestsApi.logout)
  Future<LogoutResponse> logout();

  @POST(RequestsApi.carts)
  Future<AddOrDeleteProductCartResponse> addOrDeleteProductCart(
    @Field(ApiConstants.productId) productId,
  );

  @GET(RequestsApi.carts)
  Future<GetAllCartProductsResponse> getAllCartProducts();

  @PUT(RequestsApi.updateProductOfCart)
  Future<UpdateQuantityOfProductCartResponse> updateProductOfCart(
    @Path(ApiConstants.id) int id,
    @Field(ApiConstants.quantity) quantity,
  );
}
