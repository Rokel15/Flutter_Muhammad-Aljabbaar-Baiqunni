import 'package:dio/dio.dart';

class DioServices{
  Dio dio = Dio();

  Future addContact({
    required String name,
    required String phone,
  }) async{
    try{
      final Response response = await dio.post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: {
          'name' : name,
          'phone' : phone,
        }
      );
      return response.data;
    } catch(e){
      rethrow;
    }
  }
}