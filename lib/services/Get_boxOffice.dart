import 'package:aflamak_app/helper/api.dart';
import 'package:aflamak_app/models/category_model.dart';

class GetBoxoffices{

 final String baseUrl = 'https://Movies-Verse.proxy-production.allthingsdev.co'; 
  final String baseApi = 'api/movies/top-box-office';
  Future<List<CategoryModel>> getBoxoffices() async{

    Map<String, dynamic> data = await Api().get(
      url: '$baseUrl/$baseApi',
    );
    List<dynamic> movies = data['movies'];
    List<CategoryModel> datalist = [];
    for(int i =0;i< movies.length;i++){
      datalist.add(CategoryModel.fromJson(movies[i]));
    }

    return datalist;
  }
}