import 'package:aflamak_app/models/category_model.dart';
import 'package:aflamak_app/services/Get_trending.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'get_trending_state.dart';

class GetTrendingCubit extends Cubit<GetTrendingState> {
  GetTrendingCubit() : super(GetTrendingInitial());
  
 Future<void> trending()async{
    emit(GetTrendingLoading());
    
   try {
  List <CategoryModel> categoryModelTrend = await GetTrendingService().getTrending() ;
  emit(GetTrending(categoryModelTrend: categoryModelTrend));
} catch (e) {
  emit(GetTrendingFaluire(errorMessage: e.toString() ));
  debugPrint(e.toString());
}


  }


}
