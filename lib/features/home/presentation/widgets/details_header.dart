import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/news_model.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}