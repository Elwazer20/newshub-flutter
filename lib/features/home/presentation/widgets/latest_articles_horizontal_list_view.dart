import 'package:flutter/material.dart';

import '../../data/models/news_model.dart';
import 'article_card.dart';

class LatestArticlesHorizontalListView extends StatelessWidget {
  const  LatestArticlesHorizontalListView({
    super.key, required this.data,
  });
final List<News> data ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            width: 180,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: ArticleCard(
              newsItem: data[index],
              onReadMore: () {
                print('Read More clicked for Article ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}
