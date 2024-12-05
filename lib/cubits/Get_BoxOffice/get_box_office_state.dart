part of 'get_box_office_cubit.dart';

@immutable
abstract class GetBoxOfficeState {}

class GetBoxOfficeInitial extends GetBoxOfficeState {}
class GetBoxofficeLoading extends GetBoxOfficeState{}
class GetBoxoffice extends GetBoxOfficeState{

 final List <CategoryModel> boxOfficeModel;

  GetBoxoffice({required this.boxOfficeModel});
}class GetBoxofficeFaluire extends GetBoxOfficeState{

  final String errorMessage;

  GetBoxofficeFaluire({required this.errorMessage});
}