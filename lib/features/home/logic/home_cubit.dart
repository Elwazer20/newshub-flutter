import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news/features/home/data/models/banner_response_model.dart';
import 'package:news/features/home/data/models/category_model.dart';

import '../data/home_repo.dart';
import '../data/local/hive_service.dart';
import '../data/models/news_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepo}) : super(HomeInitialState());
  final HomeRepo homeRepo;

  void getBanner() async {
    emit(HomeLoadingState());

    var result = await homeRepo.getBanner();
    result.when(
      success: (data) => emit(HomeSuccessState(bannerResponseModel: data)),
      error: (error) => emit(
        HomeFailureState(
          message: error,
        ),
      ),
    );
  }
  void getCategory() async {
    emit(CategoryLoadingState());

    var result = await homeRepo.getCategory();
    result.when(
      success: (data) => emit(CategorySuccessState(categoryResponseModel : data)),
      error: (error) => emit(
        CategoryFailureState(
          message: error,
        ),
      ),
    );
  }
  void getNews() async {
    emit(NewsLoadingState());

   try {
     var result = await homeRepo.getNews();
     result.when(
       success: (data) {
         HiveService.cacheNews(data);
         emit(NewsSuccessState(newsResponseModel: data , isFromCache: false));
       },
       error: (error) {
         final cachedNews = HiveService.getCachedNews();
         if (cachedNews != null) {
           emit(NewsSuccessState(newsResponseModel: cachedNews, isFromCache: true));
         }else {
           emit(
             NewsFailureState(
               message: error,
             ),
           );
         }
       },
     );
   }catch (e){
     final cachedNews = HiveService.getCachedNews();
     if (cachedNews != null) {
       emit(NewsSuccessState(newsResponseModel: cachedNews, isFromCache: true));
     }else {
       emit(
         NewsFailureState(
           message: e.toString(),
         ),
       );
     }
   }
  }
}
