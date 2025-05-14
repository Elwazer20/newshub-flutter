import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/core/theme/app_colors.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../data/models/news_model.dart';
import '../widgets/bottom_rounded_container.dart';
import '../widgets/details_header.dart';
import '../widgets/gradient_overlay_container.dart';

class NewsItemDetails extends StatelessWidget {
  const NewsItemDetails({super.key, required this.newsItem});
  final News newsItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image (fixed)
          Image.network(
            height: MediaQuery.sizeOf(context).height / 1.5,
            width: double.infinity,
            fit: BoxFit.cover,
            newsItem.imageUrl,
          ),

          // Header Buttons ()
          DetailsHeader(),

          // Gradient Overlay ()
          GradientOverlayContainer(
            newsItem: newsItem,
          ),

          // Scrollable Content
          BottomRoundedContainer(
            newsItem: newsItem,
          ),
        ],
      ),
    );
  }
}



