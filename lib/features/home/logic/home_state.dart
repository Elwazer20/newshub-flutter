part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitialState extends HomeState {}

final class HomeLoadingState extends HomeState {}

final class HomeSuccessState extends HomeState {
  final BannerResponseModel bannerResponseModel;
  HomeSuccessState({required this.bannerResponseModel});
}

final class HomeFailureState extends HomeState {
  final String message;
  HomeFailureState({required this.message });
}

final class CategoryLoadingState extends HomeState {}

final class CategorySuccessState extends HomeState {
  final CategoryResponseModel categoryResponseModel;
  CategorySuccessState({required this.categoryResponseModel});
}

final class CategoryFailureState extends HomeState {
  final String message;
  CategoryFailureState({required this.message });
}

final class NewsLoadingState extends HomeState {}

final class NewsSuccessState extends HomeState {
  final NewsResponseModel newsResponseModel;
  final bool isFromCache ;
  NewsSuccessState({required this.newsResponseModel, required this.isFromCache});
}

final class NewsFailureState extends HomeState {
  final String message;
  NewsFailureState({required this.message });
}
