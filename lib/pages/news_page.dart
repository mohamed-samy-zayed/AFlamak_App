import 'package:aflamak_app/cubits/Get_News/get_news_cubit.dart';
import 'package:aflamak_app/widgets/appbar_widget.dart';
import 'package:aflamak_app/widgets/bottom_navigator.dart';
import 'package:aflamak_app/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});
  static String id = 'NewsPage';

  @override
  Widget build(BuildContext context) {
    context.read<GetNewsCubit>().getMoviesNews();
    return Scaffold(
      bottomNavigationBar: BottomNavigator(index: 2),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 5, right: 5),
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
              top: 60,
            )),
          ],
        ),
        Expanded(child: BlocBuilder<GetNewsCubit, GetNewsState>(
          builder: (context, state) {
            if (state is GetNews) {
  return ListView.builder(
    padding: EdgeInsets.only(top: 10),
    itemCount: state.newsModel.length,
    itemBuilder: (context, index) {
      return NewsWidget(
        newsModel: state.newsModel[index],
      );
    },
  );
}else if (state is GetNewsFaluire) {
              return Center(
                child: Text('error ${state.errorMessage}'),
              );
            } else if (state is GetNewsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else {
              return const SizedBox();
            }
          },
        ))
      ]),
    );
  }
}
