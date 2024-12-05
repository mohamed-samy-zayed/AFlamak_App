import 'package:aflamak_app/models/category_model.dart';
import 'package:aflamak_app/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ShowCategoryWidget extends StatelessWidget {
  const ShowCategoryWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      width: 120,
      child: Card(
        elevation: 5,
        
        color: Colors.grey.withOpacity(.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(DetailPage.id, arguments: categoryModel);
              },
              child: Container(
                height: 150,
                width: 110,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child:
                            //  Image.asset('assets/images/poster.jpg'),
                            Opacity(
                          opacity: .79,
                          child: CachedNetworkImage(
                            filterQuality: FilterQuality.high,
                            imageUrl: categoryModel.photo,
                            fit: BoxFit.fitHeight,
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) => const Center(
                                child: Text('Image not available')),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 2,
                      right: 5,
                      child: Row(
                        children: [
                          Text(
                            ' ${categoryModel.rating.length < 3 ? '7.5' : categoryModel.rating.substring(0, 3)}',
                            //  '7.5',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.yellow[600],
                            size: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 100,
              child: Text(
                '${categoryModel.title} \n ${categoryModel.year == 'Unknown year' ? '2025' : categoryModel.year}',
                // '2024',
                textAlign: TextAlign.center,
                maxLines: 3,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // String getTitle(){
  //   if (categoryModel.title.length > 12){
  //     return '${categoryModel.title.substring(0,11)}...';
  //   }else{
  //    return categoryModel.title;
  //   }
  // }
}
