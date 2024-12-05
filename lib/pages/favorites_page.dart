import 'package:aflamak_app/widgets/bottom_navigator.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
 static String id = 'FavoritesPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       bottomNavigationBar: BottomNavigator(index: 3),
         );
  }
}



   
          
 

