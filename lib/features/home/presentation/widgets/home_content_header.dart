import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class HomeContentHeader extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const HomeContentHeader({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.font18SemiBold,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              'View All',
              style: AppTextStyles.font12SemiBoldGreen,
            ),
          ),
        ],
      ),
    );
  }
}
