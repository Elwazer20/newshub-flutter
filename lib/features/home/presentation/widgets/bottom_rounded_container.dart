import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../data/models/news_model.dart';

class BottomRoundedContainer extends StatelessWidget {
  const BottomRoundedContainer({
    super.key, required this.newsItem,
  });
  final News newsItem;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.sizeOf(context).height / 1.5,
      bottom: 0,
      left: 0,
      right: 0,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Text(
                newsItem.desc,   style: AppTextStyles.font16RegularWhite,
              ),
              const SizedBox(height: 100), // Extra space for scrolling
            ],
          ),
        ),
      ),
    );
  }
}
