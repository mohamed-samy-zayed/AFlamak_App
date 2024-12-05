part of 'get_by_genere_cubit.dart';

@immutable
abstract class GetByGenereState {}

class GetByGenereInitial extends GetByGenereState {}
class GetByGenereLoading extends GetByGenereState {}
class GetByGenereFailure extends GetByGenereState {
  final String errorMessage;

  GetByGenereFailure({required this.errorMessage});
}
class GetByGenereSucess extends GetByGenereState {
  final List<CategoryModel> getByGener;

  GetByGenereSucess({required this.getByGener});
}

