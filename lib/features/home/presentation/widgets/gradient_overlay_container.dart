import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../data/models/news_model.dart';

class GradientOverlayContainer extends StatelessWidget {
  const GradientOverlayContainer({
    super.key, required this.newsItem,
  });
  final News newsItem;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height / 2,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withAlpha(220),
              AppColors.darkGreyColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              newsItem.title,
              style: AppTextStyles.font23BoldWhite,
            ),
            Row(
              children: [
                Text(
                  "By",
                  style: AppTextStyles.font23BoldWhite,
                ),
                const SizedBox(width: 7),
                Text(
                  newsItem.author,
                  style: AppTextStyles.font12RegularWhite
                      .copyWith(color: AppColors.orangeColor),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.white,
              thickness: 0.8,
            ),
            Text(
              " Published on ${newsItem.createdAt.substring(0, 10)}",
              style: AppTextStyles.font12RegularWhite,
            )
          ],
        ),
      ),
    );
  }
}
