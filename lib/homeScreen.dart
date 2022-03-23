import 'package:flutter/material.dart';
import 'package:jpbsheet6/model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({ Key? key }) : super(key: key);

  final List<item> items = [
    item(name: 'The Witcher 3', price: 470000),
    item(name: 'Elden Ring', price: 680000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8.0),
              itemCount: items.length,
              itemBuilder: (context, index){
                final isi = items[index];
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/detail', arguments: items);
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(child: Text(isi.name),),
                        Expanded(child: Text(isi.price.toString()))
                      ],
                    ),
                  ),
                );
              },
            )
          )
        ],
      ),
    );
  }
}