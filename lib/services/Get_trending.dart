import 'package:aflamak_app/helper/api.dart';
import 'package:aflamak_app/models/category_model.dart';

class GetTrendingService {
  final String baseUrl = 'https://Movies-Verse.proxy-production.allthingsdev.co';
  final String baseApi = 'api/movies/most-popular-movies';

  Future<List<CategoryModel>> getTrending() async {
    
      Map<String, dynamic> data = await Api().get(url: '$baseUrl/$baseApi');

        List<dynamic> movies = data['movies'];
        List<CategoryModel> dataList = [];
        
         for(int i = 0 ; i< movies.length;i++){
          dataList.add(CategoryModel.fromJson(movies[i]));
         }

         return dataList;
        
      
    
  }
}
