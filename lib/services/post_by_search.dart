import 'package:aflamak_app/helper/api.dart';
import 'package:aflamak_app/models/category_model.dart';

class PostBySearch{

final String baseUrl = 'https://Movies-Verse.proxy-production.allthingsdev.co'; 
  final String baseApi = 'api/movies/search-movies-by-query';
  
  Future<List<CategoryModel>> postBySearch({required String query}) async{

    Map<String,dynamic> data = await Api().post(url:'$baseUrl/$baseApi',body: {
      "query":query,
    } );
    List<CategoryModel> dataList = [];
    for(int i = 0 ; i< data.length;i++){
      dataList.add(CategoryModel.fromJson(dataList[i]));
    }
    return dataList;

  }
}