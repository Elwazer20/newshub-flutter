import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/widgets/home_top_stories_section.dart';
import '../../data/models/news_model.dart';
import 'Home_latest_articles_section.dart';

class HomeTabBarContent extends StatelessWidget {
  const HomeTabBarContent({
    super.key,
    required this.data,
  });

  final List<News> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height, // Ensures scrollability
      child: TabBarView(
        physics: NeverScrollableScrollPhysics(), // Disable swipe scrolling
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomeLatestArticlesSection(
                  data: data,
                ),
                HomeTopStoriesSection(
                  data: data,
                )
              ],
            ),
          ),
          Center(child: Text('Content for Tab 2')),
          Center(child: Text('Content for Tab 3')),
          Center(child: Text('Content for Tab 4')),
          Center(child: Text('Content for Tab 5')),

        ],
      ),
    );
  }
}
