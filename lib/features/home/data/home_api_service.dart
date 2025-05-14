import 'package:news/features/home/data/models/category_model.dart';
import 'package:news/features/home/data/models/news_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../../core/networking/api_constants.dart';
import 'models/banner_response_model.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(ApiConstants.banner)
  Future<BannerResponseModel> getBanner();
  @GET(ApiConstants.category)
  Future<CategoryResponseModel> getCategory( );
  @GET(ApiConstants.news)
  Future<NewsResponseModel> getNews( );
}