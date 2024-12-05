part of 'get250_cubit.dart';

@immutable
abstract class Get250State {}

class Get250Initial extends Get250State {}

class GetTop250 extends Get250State {
  final List<CategoryModel> categoryModelTop250;

  GetTop250({required this.categoryModelTop250});
}
class GetTop250Faluire extends Get250State {
  final String errorMessage;

  GetTop250Faluire({required this.errorMessage});
}
class GetTop250Loading extends Get250State {}

