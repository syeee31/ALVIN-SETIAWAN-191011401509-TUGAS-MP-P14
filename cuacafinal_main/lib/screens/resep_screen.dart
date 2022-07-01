import 'package:cuacafinal_main/providers/resep_provider.dart';
import 'package:cuacafinal_main/screens/detail_resep_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResepScreen extends StatefulWidget {
  const ResepScreen({Key? key}) : super(key: key);

  @override
  State<ResepScreen> createState() => _ResepScreenState();
}

class _ResepScreenState extends State<ResepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Makanan'),
      ),
      body: Consumer<ResepProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.resepModel.results?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailResepScreen(
                        title: '${provider.resepModel.results![index].title}',
                        image: '${provider.resepModel.results![index].thumb}',
                        keyword: '${provider.resepModel.results![index].key}',
                        times: '${provider.resepModel.results![index].times}',
                        portion: '${provider.resepModel.results![index].portion}',
                        difficult: '${provider.resepModel.results![index].dificulty}',
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            '${provider.resepModel.results![index].thumb}'),
                        Text(
                          '${provider.resepModel.results![index].title}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            'Porsi : ${provider.resepModel.results![index].portion}'),
                        Text(
                            'Level Pembuatan : ${provider.resepModel.results![index].dificulty}'),
                      ],
                    ),
                  ),
                ),
              );
            },
            padding: EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}
