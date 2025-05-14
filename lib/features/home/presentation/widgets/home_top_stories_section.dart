import 'package:flutter/material.dart';

import '../../data/models/news_model.dart';
import 'home_content_header.dart';
import 'top_stories_vertical_list_view.dart';

class HomeTopStoriesSection extends StatelessWidget {
  const HomeTopStoriesSection({super.key, required this.data});
  final List<News> data ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContentHeader(
          title: 'Top Stories',
          onPressed: () {},
        ),
        TopStoriesVerticalListView(
          data: data,
        ),
      ],
    );
  }
}
