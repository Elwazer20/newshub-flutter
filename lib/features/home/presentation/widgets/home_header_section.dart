import 'package:flutter/material.dart';
import 'package:news/core/theme/app_text_styles.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Anderson',
              style: AppTextStyles.font18SemiBold,
            ),
            SizedBox(height: 5),
            Text(
              'Have a nice day',
              style: AppTextStyles.font12Regular,
            ),
          ],
        ),
        CircleAvatar(
          radius: 25,
          child: Image.asset(
            'assets/user.png',
            width: 45,
          ),
        )
      ],
    );
  }
}
