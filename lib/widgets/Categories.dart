
import 'package:aflamak_app/pages/see_all_Page.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories(
      {super.key,
      required this.image,
      required this.title,
      
      required this.padding,  this.right = 0});
  final String image;
  final String title;
 
  final double padding;
  final double right;

  @override
  Widget build(BuildContext context) {
    
    precacheImage(AssetImage(image), context);
    return Padding(
      padding: EdgeInsets.only(left: padding,right: right),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SeeAllPage(gener:'Gener',title:title );
          },));
        },
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: .75,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
              image: AssetImage(
                image,
              ),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              getTitle(title: title),
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String getTitle({required String title}) {
  if (title == 'sci-fi') {
    return 'Science fiction';
  } else if (title == 'film-noir') {
    return 'Black and White';
  } else {
    return title[0].toUpperCase() + title.substring(1);
  }
}
