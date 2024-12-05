import 'package:aflamak_app/models/category_model.dart';
import 'package:aflamak_app/services/Get_byGener.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'get_by_genere_state.dart';

class GetByGenereCubit extends Cubit<GetByGenereState> {
  GetByGenereCubit() : super(GetByGenereInitial());

  Future<void> getByGener({ required String movieName})async{
  
    emit(GetByGenereLoading());
    
   try {
 List <CategoryModel> GetByGener = await GetByGenere().getByGener(
  movieName: movieName
 ) ;
  emit(GetByGenereSucess(getByGener: GetByGener));
} catch (e) {
  emit(GetByGenereFailure(errorMessage: 'There was an Error \n    Try Again!' ));
  debugPrint(e.toString());
}

   }
}
