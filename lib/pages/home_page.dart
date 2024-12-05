import 'package:aflamak_app/constants.dart';
import 'package:aflamak_app/pages/see_all_Page.dart';
import 'package:aflamak_app/widgets/appbar_widget.dart';
import 'package:aflamak_app/widgets/bottom_navigator.dart';
import 'package:aflamak_app/widgets/GridView_250.dart';
import 'package:aflamak_app/widgets/listView_BoxOffice.dart';
import 'package:aflamak_app/widgets/listview_categories.dart';
import 'package:aflamak_app/widgets/listview_trending.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
          bottomNavigationBar: BottomNavigator(
            index: 0,
          ),
          appBar: AppBar(
            toolbarHeight: 70,
            title: Expanded(
              child: AppBarWidget(
                top: 20,
              ),
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(
                isScrollable: true,
                physics: BouncingScrollPhysics(),
                overlayColor: WidgetStatePropertyAll(Colors.transparent),
                splashBorderRadius: BorderRadius.circular(10),
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey,
                indicatorColor: kPrimaryColor,
                indicatorWeight: 0.1,
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
                    text: 'TV Shows',
                    icon: SizedBox(
                      width: 1,
                    ),
                  ),
                  Tab(
                    text: 'Anime',
                    icon: SizedBox(
                      width: 1,
                    ),
                  )
                ]),
          ),
          body: TabBarView(children: [
            homePageMovie(),
            Column(
              children: [Text('TV Show')],
            ),
            Column(
              children: [Text('Anime')],
            ),
          ])),
    );
  }
}

class homePageMovie extends StatelessWidget {
  const homePageMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 10, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SeeAllPage(title: 'Categories');
                              },
                            ));
                          },
                          child: Text(
                            'See more',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: ListViewCategory(),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20, bottom: 10, top: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Trending Movies',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SeeAllPage(title: 'Trending Movies');
                              },
                            ));
                          },
                          child: Text(
                            'See more',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: ListViewTrending(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20, bottom: 10, top: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Top Box Office',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SeeAllPage(title: 'Box Office Movies');
                              },
                            ));
                          },
                          child: Text(
                            'See more',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: ListViewBoxOffice(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20, bottom: 10, top: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Top Rated Movies ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SeeAllPage(title: 'Top Movies');
                              },
                            ));
                          },
                          child: Text(
                            'See more',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GridViewTop250(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
