import 'package:news/core/networking/api_result.dart';
import 'package:news/features/home/data/models/banner_response_model.dart';
import 'package:news/features/home/data/models/category_model.dart';
import 'package:news/features/home/data/models/news_model.dart';

import 'home_api_service.dart';

class HomeRepo {
  final HomeApiService homeApiService;
  HomeRepo({required this.homeApiService});

  Future<ApiResult<BannerResponseModel>> getBanner() async {
    var result =   await homeApiService.getBanner();
    if (result.succeeded) {
      return Success(result);
    } else {
      return Error("Something went wrong");
    }
  }
  Future<ApiResult<CategoryResponseModel>> getCategory() async {
    var result =   await homeApiService.getCategory();
    if (result.succeeded) {
      return Success(result);
    } else {
      return Error("Something went wrong");
    }
  }  Future<ApiResult<NewsResponseModel>> getNews() async {
    var result =   await homeApiService.getNews();
    if (result.succeeded) {
      return Success(result);
    } else {
      return Error("Something went wrong");
    }
  }

}