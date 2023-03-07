import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:star_news_application/app/models/detail_news_model.dart';

class DetailNewsService {
  final _connect = Get.find<GetConnect>();

  Future<DetailNewsModel> getDetailNews({required String id}) async {
    final response = await _connect.get('1/lookup.php?i=$id',
        decoder: (data) => DetailNewsModel.fromJson(data as Map<String, dynamic>));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
}