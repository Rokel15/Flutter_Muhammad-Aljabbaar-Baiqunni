import 'package:dio/dio.dart';
import 'package:no_2/models/ContactModel.dart';

class DioServices{
  Dio dio = Dio();

  Future fethData() async{
    try{
      final Response response = await dio.get('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2');
      if (response.statusCode==200){
        // final jsonData = Contact.fromJson(response.data);
        // return jsonData;

        return Contact.fromJson(response.data);
      }
    } catch(e) {
      rethrow;
    }
  }
}