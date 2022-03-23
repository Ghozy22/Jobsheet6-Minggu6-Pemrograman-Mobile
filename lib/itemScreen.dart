import 'package:flutter/material.dart';
import 'package:jpbsheet6/model.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final item itemInsideHere = ModalRoute.of(context)!.settings.arguments as item;

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: Text(itemInsideHere.name))
          ],
        ),
      ),
    );
  }
}
