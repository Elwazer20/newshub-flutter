import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presentation/widgets/home_custom_tab_bar.dart';
import 'package:news/features/home/presentation/widgets/home_tab_bar_content.dart';

import '../../data/models/news_model.dart';
import '../../logic/home_cubit.dart';

class HomeTabController extends StatelessWidget {
  const HomeTabController({
    super.key, required this.data,
  });
  final List<News> data;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: data.length,
      child: Column(
        children: [
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {

              if (state is CategoryLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is CategoryFailureState) {
                return Center(child: Text(state.message));
              } else if (state is CategorySuccessState) {
                return HomeCustomTabBar(
                  categories: state.categoryResponseModel.data,
                );
              }
              return SizedBox();

            },
          ),
          HomeTabBarContent(
            data: data,
          ),
        ],
      ),
    );
  }
}
