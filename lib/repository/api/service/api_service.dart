import 'package:fakestoreapi/config/appconfig.dart';

import '../model/fakestoreapi.dart';
import'package:http/http.dart'as http;

class Httpservice{
  static Future<List<Fakestoreapi>>fetch_products() async{
    var response=await http.get(Uri.parse("${appconfig.BaseUri}"));
    if(response.statusCode==200){
      var data=response.body;
      return  fakestoreapiFromJson(data);
    }else{ throw Exception();}
  }
}


