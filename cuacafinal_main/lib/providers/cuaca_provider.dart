import 'package:flutter/cupertino.dart';

import '../models/cuaca_model.dart';
import '../services/cuaca_service.dart';

class CuacaProvider extends ChangeNotifier {
  // TO DO
  TextEditingController inputnamakota = TextEditingController();
  CuacaService _CuacaService = CuacaService();
  CuacaModel cuacamodel = CuacaModel();
  // LOGIC
  tampikanDataCuaca({required String inputnamakota}) async {
    cuacamodel = await _CuacaService.getCuaca(namakota: inputnamakota);
    notifyListeners();
  }

  // first exec
  CuacaProvider() {
    tampikanDataCuaca(inputnamakota: 'Pamulang');
  }
}
