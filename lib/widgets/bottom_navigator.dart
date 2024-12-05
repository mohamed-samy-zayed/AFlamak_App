import 'package:aflamak_app/constants.dart';
import 'package:aflamak_app/pages/account_page.dart';
import 'package:aflamak_app/pages/favorites_page.dart';
import 'package:aflamak_app/pages/home_page.dart';
import 'package:aflamak_app/pages/news_page.dart';
import 'package:aflamak_app/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = widget.index;

    return

        // Container(
        //     decoration: BoxDecoration(
        //       color: const Color(0xff1E1E1C).withOpacity(.5),
        //       borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 15),
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 IconButton(
        //                     onPressed: () {

        //                           setState(() {

        //                         widget.home = true;

        //                         widget.search = false;

        //                         widget.news = false;

        //                         widget.person = false;

        //                       });
        //                         if(widget.home == false|| widget.search == true){

        //                           Navigator.pop(context);

        //                         }

        //                     },
        //                     icon: Icon(
        //                       Icons.home_rounded,
        //                       color:
        //                           widget.home == true ? kPrimaryColor : Colors.grey,
        //                       size: 28,
        //                     )),
        //                 IconButton(
        //                     onPressed: () {
        //                       Navigator.pushNamed(context, SearchAboutPage.id);
        //                       setState(() {
        //                         widget.home = false;

        //                         widget.search = true;

        //                         widget.news = false;

        //                         widget.person = false;
        //                       });
        //                     },
        //                     icon: Icon(
        //                       Icons.search,
        //                       color: widget.search == true
        //                           ? kPrimaryColor
        //                           : Colors.grey,
        //                       size: 28,
        //                     )),
        //                 IconButton(
        //                     onPressed: () {
        //                       setState(() {
        //                         widget.home = false;

        //                         widget.search = false;

        //                         widget.news = true;

        //                         widget.person = false;
        //                       });
        //                     },
        //                     icon: Icon(
        //                       Icons.newspaper_rounded,
        //                       color:
        //                           widget.news == true ? kPrimaryColor : Colors.grey,
        //                       size: 28,
        //                     )),
        //                 IconButton(
        //                     onPressed: () {
        //                       setState(() {
        //                         widget.home = false;

        //                         widget.search = false;

        //                         widget.news = false;

        //                         widget.person = true;
        //                       });
        //                     },
        //                     icon: Icon(
        //                       Icons.person_outline_rounded,
        //                       color: widget.person == true
        //                           ? kPrimaryColor
        //                           : Colors.grey,
        //                       size: 30,
        //                     )),
        //               ]),
        //           const SizedBox(height: 5),
        //           const SizedBox(
        //             width: 100,
        //             child: Divider(
        //               color: Colors.grey,
        //               thickness: 3,
        //             ),
        //           )
        //         ],
        //       ),
        //     ));

        Container(
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromRGBO(46, 46, 42, 0.098),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),

      child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w800,
          ),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Color.fromRGBO(30, 30, 28, 0.1),
          selectedItemColor: kPrimaryColor,
          currentIndex: selectedIndex,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });

            if (value == 0) {
              Navigator.pushReplacementNamed(context, HomePage.id);
            } else if (value == 1) {
              Navigator.pushNamed(context, SearchAboutPage.id);
            } else if (value == 2) {
              Navigator.pushNamed(context, NewsPage.id);
            } else if (value == 3) {
              Navigator.pushNamed(context, FavoritesPage.id);
            } else if (value == 4) {
              Navigator.pushNamed(context, AccountPage.id);
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_rounded),
              tooltip: 'Home',
              label: 'Home',
              activeIcon: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.home_rounded),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search_rounded),
              tooltip: 'Search',
              label: 'Search',
              activeIcon: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.search_rounded),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.newspaper_rounded,
              ),
              tooltip: 'News',
              label: 'News',
              activeIcon: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(FontAwesomeIcons.newspaper),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite_border_sharp),
              tooltip: 'Like',
              label: 'Like',
              activeIcon: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.favorite_sharp),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline_rounded),
              tooltip: 'Account',
              label: 'Account',
              activeIcon: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.person_rounded),
              ),
            ),
          ]),
      //          const SizedBox(height: 5),
      // const SizedBox(
      //   width: 100,
      //   child: Divider(
      //     color: Colors.grey,
      //     thickness: 3,
      //   ),
      // )
    );
  }
}
