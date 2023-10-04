import 'package:dio/dio.dart';

class DioServices{
  Dio dio = Dio();

  Future fetchData() async{
    try{
      final Response response = await dio.get(
        'https://jsonplaceholder.typicode.com/posts/1',
      );

      return response.data;
    } catch(e){
      rethrow;
    }
  }

  Future updateData({
    required String title,
    required String body,
  }) async{
    try{
      final Response response = await dio.put(
          'https://jsonplaceholder.typicode.com/posts/1',
          data: {
            'title' : title,
            'body' : body,
          }
      );

      return response.data;
    } catch(e){
      rethrow;
    }
  }
}