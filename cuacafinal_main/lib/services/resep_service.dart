import 'package:cuacafinal_main/models/detail_resep_model.dart';
import 'package:cuacafinal_main/models/resep_model.dart';
import 'package:dio/dio.dart';

class ResepService {
  Future<ResepModel> getResep() async {
    var response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipes/1');
    return ResepModel.fromJson(response.data);
  }

  Future<DetailResepModel> detailResep({String? key}) async {
    var response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipe/$key');
    return DetailResepModel.fromJson(response.data);
  }
}
