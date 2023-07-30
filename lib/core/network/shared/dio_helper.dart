import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.api-ninjas.com/v1',
        receiveDataWhenStatusError: true,
        headers: {
          'X-Api-Key': 'FyBV6owLbPzvmF5JMmBoZw==nCK1jnbzwzoeBQuA',
        },
      ),
    );
  }

  static  Future <Response> getData ({
    required String url,
    required Map<String, dynamic> query,

  }) async
  {
    return await dio.get(url, queryParameters: query,);
  }
}