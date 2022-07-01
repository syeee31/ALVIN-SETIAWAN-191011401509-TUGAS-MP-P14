import 'package:cuacafinal_main/services/nft_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:cuacafinal_main/models/nft_model.dart';

class NFTProvider extends ChangeNotifier {
  late NFTModel nftModel = NFTModel(); //
  final NFTService _NFTService = NFTService(); //

  tampilkanNFT() async {
    nftModel = await _NFTService.getNFT();
    notifyListeners();
  }

  NFTProvider() {
    tampilkanNFT();
  }
}
