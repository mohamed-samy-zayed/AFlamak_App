import 'package:aflamak_app/models/category_model.dart';
import 'package:aflamak_app/services/Get_boxOffice.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'get_box_office_state.dart';

class GetBoxOfficeCubit extends Cubit<GetBoxOfficeState> {
  GetBoxOfficeCubit() : super(GetBoxOfficeInitial());

  
Future<void> getBoxoffice()async{
  
    emit(GetBoxofficeLoading());
    
   try {
 List <CategoryModel> categoryModel = await GetBoxoffices().getBoxoffices() ;
  emit(GetBoxoffice(boxOfficeModel: categoryModel));
} catch (e) {
  emit(GetBoxofficeFaluire(errorMessage: 'There was an Error \n    Try Again!' ));
  debugPrint(e.toString());
}

   }


}
