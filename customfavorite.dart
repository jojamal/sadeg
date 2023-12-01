import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/homewidget.dart';

class myfavorite extends StatelessWidget {
  const myfavorite ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
            //  customappbar(
            //   hintText: 'search',
            //    onPressedsearch: () {},
            //    prefixIconButton: Icon(Icons.delete),),
            //     SizedBox(height: 10,),
        ],),
      ),
    );
  }
}