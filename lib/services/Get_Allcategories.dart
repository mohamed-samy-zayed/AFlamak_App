import 'package:aflamak_app/helper/api.dart';



class GetCategories{


  final String baseUrl = 'https://Movies-Verse.proxy-production.allthingsdev.co'; 
  final String baseApi = 'api/movies/available-genres';
  Future<List<String>> getCategories() async{
 
    Map<String, dynamic>  data = await  Api().get(url: '$baseUrl/$baseApi');
 
    List<String> list = List<String>.from(data['genres']);

   return list;
  }


  


}