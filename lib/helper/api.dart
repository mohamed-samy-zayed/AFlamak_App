import 'dart:convert';
import 'package:http/http.dart' as http;

class Api{

 Future<dynamic> get({
  required String url,
 }) async{

  Map<String,String> headers = {
   'x-apihub-key': '0Sa2ckl8DL1bHDQilfLJw8TmfP4AAIyan-4LWjM3ZBmKibhsvI',
   'x-apihub-host': 'Movies-Verse.allthingsdev.co',
   'x-apihub-endpoint': '9f3f88f2-24e7-486e-8360-0c8d1f223079'};

  http.Response response =  await http.get(Uri.parse(url),headers: headers);


 if(response.statusCode == 200){

  return jsonDecode(response.body);
 }else{

  throw Exception('there is an error with status code : ${response.statusCode}');
 }


  }

  Future <dynamic> post ({required String url,required Map<String,String> body }) async{
    Map<String,String> headers = {
   'x-apihub-key': '0Sa2ckl8DL1bHDQilfLJw8TmfP4AAIyan-4LWjM3ZBmKibhsvI',
   'x-apihub-host': 'Movies-Verse.allthingsdev.co',
   'x-apihub-endpoint': '9f3f88f2-24e7-486e-8360-0c8d1f223079'
    };

    http.Response response = await http.post(Uri.parse(url),headers: headers ,body: body);

    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      throw Exception('there is an error with status code : ${response.statusCode}');
    }
  }
}