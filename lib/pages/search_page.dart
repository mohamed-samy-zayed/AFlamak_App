import 'package:aflamak_app/constants.dart';
import 'package:aflamak_app/widgets/actor_tab.dart';
import 'package:aflamak_app/widgets/appbar_widget.dart';
import 'package:aflamak_app/widgets/bottom_navigator.dart';
import 'package:aflamak_app/widgets/movie_tab.dart';
import 'package:flutter/material.dart';

class SearchAboutPage extends StatelessWidget {
  const SearchAboutPage({super.key});
  static String id = 'SearchAboutPage';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: const BottomNavigator(
          index: 1,
        ),
        appBar: AppBar(
          toolbarHeight: 60,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 5),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    )),
              ),
              Expanded(
                  child: AppBarWidget(
                top: 20,
              )),
            ],
          ),
          bottom: TabBar(
              isScrollable: true,
              physics: BouncingScrollPhysics(),
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              splashBorderRadius: BorderRadius.circular(10),
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey,
              indicatorColor: kPrimaryColor,
              indicatorWeight: 3,
              labelColor: kPrimaryColor,
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                  text: 'Movies',
                  icon: SizedBox(
                    width: 1,
                  ),
                ),
                Tab(
                  text: 'Celebrity',
                  icon: SizedBox(
                    width: 1,
                  ),
                ),
              ]),
        ),
        body: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [MovieTab(), ActorTab()]),
      ),
    );
  }
}
