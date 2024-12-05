part of 'get_news_cubit.dart';

@immutable
abstract class GetNewsState {}

class GetNewsInitial extends GetNewsState {}

class GetNewsLoading extends GetNewsState{}
class GetNews extends GetNewsState{

 final List <NewsModel> newsModel;

  GetNews({required this.newsModel});
}class GetNewsFaluire extends GetNewsState{

  final String errorMessage;

  GetNewsFaluire({required this.errorMessage});
}
