part of 'get_cubit.dart';

@immutable
abstract class GetState {}

class GetInitial extends GetState {}




class GetCategoryNameLoading extends GetState{}
class GetCategoryName extends GetState{

 final List <dynamic> categoryModel;

  GetCategoryName({required this.categoryModel});
}class GetCategoryNameFaluire extends GetState{

  final String errorMessage;

  GetCategoryNameFaluire({required this.errorMessage});
}


