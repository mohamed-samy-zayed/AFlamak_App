import 'package:aflamak_app/services/Get_Allcategories.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'get_state.dart';

class GetCubit extends Cubit<GetState> {
  GetCubit() : super(GetInitial());



Future<void> getCategoryName()async{
  
    emit(GetCategoryNameLoading());
    
   try {
 List <dynamic> categoryModel = await GetCategories().getCategories() ;
  emit(GetCategoryName(categoryModel: categoryModel));
} catch (e) {
  emit(GetCategoryNameFaluire(errorMessage: 'There was an Error \n    Try Again!' ));
  debugPrint(e.toString());
}

   }

 
 
}
