import 'package:aflamak_app/helper/api.dart';
import 'package:aflamak_app/models/News_model.dart';

class GetMoviesNews{

 final String baseUrl = 'https://Movies-Verse.proxy-production.allthingsdev.co'; 
  final String baseApi = 'api/movies/get-movie-news';
  Future<List<NewsModel>> getMoviesNews() async{

    Map<String, dynamic> data = await Api().get(
      url: '$baseUrl/$baseApi',
    );
    List<dynamic> News = data['news'];
    List<NewsModel> datalist = [];
    for(int i =0;i< News.length;i++){
      datalist.add(NewsModel.fromJson(News[i]));
    }

    return datalist;
  }
        
        
}