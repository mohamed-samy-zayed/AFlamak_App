
import 'package:aflamak_app/models/News_model.dart';
import 'package:aflamak_app/services/Get_MoviesNews.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());
   Future<void> getMoviesNews()async{
  
    emit(GetNewsLoading());
    
   try {
 List <NewsModel> newsModel = await GetMoviesNews().getMoviesNews() ;
  emit(GetNews(newsModel: newsModel));
} catch (e) {
  emit(GetNewsFaluire(errorMessage: 'There was an Error \n    Try Again!' ));
  debugPrint(e.toString());
}

   } 
   

}
