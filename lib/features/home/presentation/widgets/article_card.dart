import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/core/theme/app_colors.dart';
import 'package:news/core/theme/app_text_styles.dart';

import '../../data/models/news_model.dart';
import '../screens/news_item_details.dart';

class ArticleCard extends StatelessWidget {

  final VoidCallback onReadMore;
  final News newsItem;

  const ArticleCard({
    super.key,
    required this.onReadMore, required this.newsItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
       Navigator.push(context, MaterialPageRoute(builder:

       (context) {
         return NewsItemDetails(
           newsItem: newsItem,
         );
       }
       ));
     } ,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        color: AppColors.darkGreyColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Image
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: newsItem.imageUrl,
                  width: 145,
                  height:MediaQuery.of(context).size.height*0.19,
                  fit: BoxFit.cover,
                  placeholder: (context,url) => Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                    child: const Icon(Icons.error),
                  ),
                ),
              ),

              // Article Title
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: Text(
                  newsItem.title,
                  style: AppTextStyles.font12RegularWhite,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Spacer(),
              // Read More Button
              Padding(
                padding: const EdgeInsets.only(left: 2, right: 16, bottom: 2),
                child: GestureDetector(
                  onTap: () => onReadMore,
                  child: Row(
                    children: [
                      Icon(
                        Icons.book,
                        color: AppColors.whiteColor,
                        size: 16,
                      ),
                      Text(
                        'Read More',
                        style: AppTextStyles.font12Regular
                            .copyWith(color: AppColors.whiteColor),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
