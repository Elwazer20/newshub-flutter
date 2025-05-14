import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/widgets/latest_articles_horizontal_list_view.dart';

import '../../data/models/news_model.dart';
import 'home_content_header.dart';

class HomeLatestArticlesSection extends StatelessWidget {
  const HomeLatestArticlesSection({super.key, required this.data});
  final List<News> data ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContentHeader(
          title: 'Latest Articles',
          onPressed: () {},
        ),
        LatestArticlesHorizontalListView(
          data: data,
        ),
      ],
    );
  }
}
