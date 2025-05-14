import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/widgets/article_card.dart';

import '../../data/models/news_model.dart';

class Tab1Content extends StatelessWidget {
  const Tab1Content({super.key, required this.newsItem});
  final News newsItem;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Section Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Articles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to "View All" page
                    print('View All clicked');
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // List of Articles
          ListView.builder(
            itemCount: 6, // Number of articles
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ArticleCard(
                newsItem: newsItem,
               onReadMore: () {
                  // Handle "Read More" button click
                  print('Read More clicked for Article ${index + 1}');
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
