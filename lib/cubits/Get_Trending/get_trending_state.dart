part of 'get_trending_cubit.dart';

@immutable
abstract class GetTrendingState {}

class GetTrendingInitial extends GetTrendingState {}
class GetTrending extends GetTrendingState {
  final List<CategoryModel> categoryModelTrend;

  GetTrending({required this.categoryModelTrend});
}
class GetTrendingFaluire extends GetTrendingState {
  final String errorMessage;

  GetTrendingFaluire({required this.errorMessage});
}
class GetTrendingLoading extends GetTrendingState {}
