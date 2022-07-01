import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cuaca_provider.dart';

class CuacaScreen extends StatefulWidget {
  const CuacaScreen({Key? key}) : super(key: key);

  @override
  _CuacaScreenState createState() => _CuacaScreenState();
}

class _CuacaScreenState extends State<CuacaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Cuaca'),
      ),
      body: Consumer<CuacaProvider>(
        builder: (context, provider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${provider.cuacamodel.main!.temp}',
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 250,
                height: 250,
                child: Image.network(
                  'https://openweathermap.org/img/w/${provider.cuacamodel.weather![0].icon}.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '${provider.cuacamodel.name}',
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
              TextFormField(
                controller: provider.inputnamakota,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
                decoration: InputDecoration(
                  hintText: 'Masukkan nama kota',
                ),
              ),
              TextButton(
                onPressed: () {
                  provider.tampikanDataCuaca(
                      inputnamakota: provider.inputnamakota.text);
                  provider.inputnamakota.clear();
                },
                child: Text('Tampilkan Data'),
              ),
            ],
          );
        },
      ),
    );
  }
}
