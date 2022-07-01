import 'package:cuacafinal_main/models/detail_resep_model.dart';
import 'package:cuacafinal_main/models/resep_model.dart';
import 'package:cuacafinal_main/services/resep_service.dart';
import 'package:flutter/cupertino.dart';

class ResepProvider extends ChangeNotifier {
  ResepService _ResepService = ResepService();
  ResepModel resepModel = ResepModel();
  DetailResepModel detailResepModel = DetailResepModel();

  // LOGIC
  tampikanSemuaDataResep() async {
    resepModel = await _ResepService.getResep();
    notifyListeners();
  }

  tampikanDetailDataResep({String? key}) async {
    detailResepModel = await _ResepService.detailResep(key: key);
    notifyListeners();
  }

  // first exec
  ResepProvider() {
    tampikanSemuaDataResep();
  }
}
