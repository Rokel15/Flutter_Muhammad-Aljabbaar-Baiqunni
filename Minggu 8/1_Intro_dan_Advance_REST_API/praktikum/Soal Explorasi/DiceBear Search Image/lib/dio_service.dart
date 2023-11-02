import 'package:dio/dio.dart';

class DioService{
  Dio dio = Dio();

  Future lookforImage({required String lookfor}) async{
    try{
      final Response response = await dio.get('https://api.dicebear.com/7.x/pixel-art/svg?seed=$lookfor');
      if(response.statusCode==200){
        return response.data as String;
      }
    }catch(e){
      rethrow;
    }
  }
}