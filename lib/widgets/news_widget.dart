import 'package:aflamak_app/models/News_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
     required this.newsModel
  });
final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
              //  Image.asset(
              //   'assets/images/Movies.jpg',
              //   height: 200,
              //   width: double.infinity,
              //   filterQuality: FilterQuality.high,
              //   fit: BoxFit.cover,
              // )

              CachedNetworkImage(
                height: 200,
                width: double.infinity,
                          filterQuality: FilterQuality.high,
                          imageUrl: newsModel.photo,
                          fit:  BoxFit.cover,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Center(child: Text('Image not available')),
                        ),

              ),
          const SizedBox(
            height: 12,
          ),
          Text(
            // 'Mohamed samy elsayed hassan zayed',
            newsModel.title ,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // 'Flutter Developer',
               newsModel.Writer ,
                maxLines: 1,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
               Text(
                // 'Flutter Developer',
                newsModel.date ,
                maxLines: 1,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
