import 'package:aflamak_app/constants.dart';
import 'package:aflamak_app/models/category_model.dart';
import 'package:aflamak_app/widgets/detail_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});
  static String id = 'DetailPage';

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    CategoryModel detail =
        ModalRoute.of(context)!.settings.arguments as CategoryModel;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  // image: DecorationImage(
                  //   opacity: .75,
                  //   filterQuality: FilterQuality.high,
                  //   fit: BoxFit.cover,
                  //   image: AssetImage(
                  //     'assets/images/poster.jpg',
                  //   ),
                  // ),
                ),
                child: Opacity(
                  opacity: .75,
                  child: CachedNetworkImage(
                    filterQuality: FilterQuality.high,
                    imageUrl: detail.photo,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Center(child: Text('Image not available')),
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.4),
                        shape: BoxShape.circle),
                    child: IconButton(
                        style: ButtonStyle(
                            fixedSize: WidgetStatePropertyAll(Size(50, 50))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_left_rounded,
                          size: 35,
                        )),
                  )),
              Positioned(
                bottom: 40,
                left: 25,
                child: Text(
                  getTitle(detail),
                  // 'Game of Thrones',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                left: 27,
                child: Text(
                  'Time:  ${detail.time == 'Unknown time' ? '2h 3m' : detail.time}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 27,
                child: Row(
                  children: [
                    Text(
                      'IMDB:   ${detail.rating.length < 3 ? '7.5' : detail.rating.substring(0, 3)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.yellow[600],
                      size: 20,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 25,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isSelected ? kPrimaryColor : Colors.grey[600],
                      size: 40,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView(
              padding: EdgeInsets.only(top: 20),
              children: [
                DetailWidget(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Summary',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                    'sxdcfghjkl;lkjbhvgcfcvjokpjhgffcgvbhjkkjhgfdfcgvhhugfddfcgvhjkllbvcvbnmjhgffgyhujikol;.,mnbvghujikl,mnbvghjik',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  fixedSize: Size(250, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 7, 11, 30)),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: kPrimaryColor,
                        size: 30,
                      )),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Watch Now',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 7, 11, 30),
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
   String getTitle(CategoryModel categoryModel){
    if (categoryModel.title.length > 12){
      return '${categoryModel.title.substring(0,21)}...';
    }else{
     return categoryModel.title;
    }
  }
}
