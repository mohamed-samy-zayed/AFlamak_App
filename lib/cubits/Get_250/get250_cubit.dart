import 'package:aflamak_app/models/category_model.dart';
import 'package:aflamak_app/services/Get_top250.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'get250_state.dart';

class Get250Cubit extends Cubit<Get250State> {
  Get250Cubit() : super(Get250Initial());

  
Future<void> top250()async{
    emit(GetTop250Loading());
    
   try { 
    List <CategoryModel> categoryModelTop250 = await GetTop250Service().getTop250() ;
  emit(GetTop250(categoryModelTop250: categoryModelTop250));
} catch (e) {
  emit(GetTop250Faluire(errorMessage: e.toString() ));
  debugPrint(e.toString());
}
   }


}
