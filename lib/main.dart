import 'package:aflamak_app/cubits/Get_250/get250_cubit.dart';
import 'package:aflamak_app/cubits/Get_BoxOffice/get_box_office_cubit.dart';
import 'package:aflamak_app/cubits/Get_By_Genere/get_by_genere_cubit.dart';
import 'package:aflamak_app/cubits/Get_News/get_news_cubit.dart';
import 'package:aflamak_app/cubits/Get_Trending/get_trending_cubit.dart';
import 'package:aflamak_app/cubits/Get_cubit/get_cubit.dart';
import 'package:aflamak_app/pages/account_page.dart';
import 'package:aflamak_app/pages/detail_page.dart';
import 'package:aflamak_app/pages/favorites_page.dart';
import 'package:aflamak_app/pages/home_page.dart';
import 'package:aflamak_app/pages/news_page.dart';
import 'package:aflamak_app/pages/search_page.dart';
import 'package:aflamak_app/widgets/seeAll_Categories.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const AflamakApp()));
}

class AflamakApp extends StatelessWidget {
  const AflamakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetCubit()),
        BlocProvider(create: (context) => Get250Cubit()),
        BlocProvider(create: (context) => GetNewsCubit()),
        BlocProvider(create: (context) => GetTrendingCubit()),
        BlocProvider(create: (context) => GetBoxOfficeCubit()),
        BlocProvider(create: (context) => GetByGenereCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Aflamak ',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark,
          useMaterial3: false,
        ),
        routes: {
          HomePage.id: (context) => const HomePage(),
          SearchAboutPage.id: (context) => const SearchAboutPage(),
          NewsPage.id: (context) => const NewsPage(),
          FavoritesPage.id: (context) => const FavoritesPage(),
          AccountPage.id: (context) => const AccountPage(),
          DetailPage.id: (context) => const DetailPage(),
          SeeallCategories.id: (context) => const SeeallCategories(),
          
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
