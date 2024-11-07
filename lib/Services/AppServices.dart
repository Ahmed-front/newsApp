import 'package:dio/dio.dart';

import '../Models/AppModel.dart';

class AppServices {
  static Dio dio = Dio();

  static Future<AppModel> GetNews() async {
    try {
      var url = "https://newsapi.org/v2/everything?q=tesla&from=2024-10-07&sortBy=publishedAt&apiKey=02a63347dba54e61ad8312004419737a";
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        return AppModel.fromjson(response.data);
      }
      else {
        throw("404");
      }
    }
    catch (e) {
      throw(e.toString());
    }
  }
}