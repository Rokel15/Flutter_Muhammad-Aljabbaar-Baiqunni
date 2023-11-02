import 'package:dio/dio.dart';

class DioService{
  Dio dio = Dio();

  Future getImageFromDiceBear() async{
    try {
      final Response lorelei = await dio.get('https://api.dicebear.com/7.x/lorelei/svg');
      if(lorelei.statusCode==200){
        return lorelei.data as String;
      }
    } catch(e){
      rethrow;
    }
  }
}