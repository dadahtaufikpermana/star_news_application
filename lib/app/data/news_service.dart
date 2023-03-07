import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get_core/src/get_main.dart';

class NewsService {
  final _connect = Get.find<GetConnect>();

  Future<List> getNews({required String id}) async {
    final response = await _connect.get('posts');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}