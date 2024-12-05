import 'package:aflamak_app/pages/home_page.dart';
import 'package:aflamak_app/pages/search_page.dart';
import 'package:aflamak_app/widgets/Categories.dart';
import 'package:aflamak_app/widgets/GridView_250.dart';
import 'package:aflamak_app/widgets/seeAll_BoxOffice.dart';
import 'package:aflamak_app/widgets/seeAll_Categories.dart';
import 'package:aflamak_app/widgets/seeAll_trending.dart';
import 'package:aflamak_app/widgets/see_all_By_Gener.dart';
import 'package:flutter/material.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage ({super.key, required this.title,  this.gener});
 final String title;
 final String? gener;
 static String id = 'SeeAllPage';

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        
        title: Text(getTitle(
          title: title,
          
        ),
        textAlign: TextAlign.center,style:TextStyle(
          fontWeight: FontWeight.w700,
        )),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                HomePage.id,
                (route) => true,
              );
            },
            icon: Icon(Icons.arrow_back_ios_rounded)),
            actions: [
              IconButton(onPressed: (){
                 Navigator.pushNamedAndRemoveUntil(
                context,
                SearchAboutPage.id,
                (route) => true,
              );
              }, icon: Icon(Icons.search)),
            ],
      ),
      body: Padding(

        padding: const EdgeInsets.only(top: 15,bottom: 25),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
          if(title == 'Categories')
          SeeallCategories(),
           if(title == 'Trending Movies')
           SeeallTrending(),
           if(title == 'Box Office Movies')
           SeeallBoxoffice(),
           if(title == 'Top Movies')
           GridViewTop250(),
           if(gener == 'Gener')
           SeeAllByGener(
            gener: title == null ? '' : title!,
           ),


          ],
        ),
      )
      
      
      
      
      
      
       // BlocBuilder<Get250Cubit, Get250State>(
    //   builder: (context, state) {
    //     if (state is GetTop250) {
    //       return 
     );
  }
}