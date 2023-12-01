import 'package:flutter/material.dart';
import 'package:shooping/core/function/checkinternet.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

var resolt;
initialnetwork()async{
resolt= await chackinternet();
print(resolt);
}
  @override
  void initState() {
   initialnetwork();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Scaffold(
         body: Column(
          children: [
           
          ],
         ),
      ))
    );
  }
}