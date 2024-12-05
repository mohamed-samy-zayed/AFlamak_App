import 'package:aflamak_app/helper/api.dart';
import 'package:aflamak_app/models/born_model.dart';

class GetBorn{

 final String baseUrl = 'https://Movies-Verse.proxy-production.allthingsdev.co'; 
  final String baseApi = 'api/movies/get-born-by-date';
  Future<List<BornModel>> getBorn({required int month,day}) async{

    List<BornModel> data = await Api().get(
      url: '$baseUrl/$baseApi?month=$month&date=$day',
    );
    List<BornModel> datalist = [];
    for(int i =0;i< data.length;i++){
      datalist.add(BornModel.fromJson(data[i]));
    }

    return datalist;
  }
}