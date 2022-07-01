import 'package:cuacafinal_main/providers/cuaca_provider.dart';
import 'package:cuacafinal_main/providers/nft_provider.dart';
import 'package:cuacafinal_main/providers/resep_provider.dart';
import 'package:cuacafinal_main/screens/resep_screen.dart';
import 'package:cuacafinal_main/services/cuaca_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final CuacaService _CuacaService = CuacaService();
  // _CuacaService.getCuaca(namakota: "jakarta");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CuacaProvider>(
          create: (context) => CuacaProvider(),
        ),
        ChangeNotifierProvider<NFTProvider>(
          create: (context) => NFTProvider(),
        ),
        ChangeNotifierProvider<ResepProvider>(
          create: (context) => ResepProvider(),
        ),
      ],
      child: const MaterialApp(
        home: ResepScreen(),
      ),
    );
  }
}
