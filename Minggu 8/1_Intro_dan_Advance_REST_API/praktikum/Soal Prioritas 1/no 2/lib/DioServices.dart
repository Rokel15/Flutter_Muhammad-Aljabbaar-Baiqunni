import 'package:dio/dio.dart';

class DioServices{
  Dio dio = Dio();

  Future fetchData() async{
    try{
      final Response response = await dio.get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
      );

      return response.data;
    } catch(e){
      rethrow;
    }
  }

  Future updateContact({
    required String name,
    required String phone
  }) async{
    try{
      final Response response = await dio.put(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
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