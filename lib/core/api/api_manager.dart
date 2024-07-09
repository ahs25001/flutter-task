import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../utils/app_constants.dart';
import 'end_points.dart';

@singleton
class ApiManager {
  Future<http.Response> getData(String endPoint) async {
    Uri url = Uri.https(baseUrl, endPoint);
    http.Response response = await http.get(url);
    return response ;
  }
}
