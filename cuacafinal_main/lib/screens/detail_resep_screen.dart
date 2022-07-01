import 'package:flutter/material.dart';

class DetailResepScreen extends StatefulWidget {
  final String? title;
  final String? image;
  final String? keyword;
  final String? times;
  final String? portion;
  final String? difficult;

  const DetailResepScreen({
    this.title, 
    this.image, 
    this.keyword,
    this.times,
    this.portion,
    this.difficult,
    Key? key
    }) : super(key: key);

  @override
  State<DetailResepScreen> createState() => _DetailResepScreenState();
}

class _DetailResepScreenState extends State<DetailResepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: ListView(
        padding: EdgeInsets.all(18),
        children: [
          Card(
            child: Column(
              children: [
                Image.network('${widget.image}'),
                Text(
                  '${widget.title}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Text('subtitle : ${widget.keyword}',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ),
                 Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                
                
                Text('Estimasi Pembuatannya adalah ${widget.times}. Resep tersebut disarankan untuk  ${widget.portion}'),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
