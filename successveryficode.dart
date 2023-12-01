import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constans/Routes.dart';

class successveryficodepage extends StatelessWidget {
  const successveryficodepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 183, 108),
        body:Container(
        margin:    const EdgeInsets.all(15),
        child:      Column(
        children: [
const SizedBox(height: 100,),
        const Center(child:Text (" ",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),),
        const Text("{successveryfi}",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,),),
        const Icon(Icons.check_circle_outline,size: 100,color: Color.fromARGB(255, 3, 97, 29),),
        SizedBox(height: 20,),
        MaterialButton(onPressed: (){Get.toNamed(Approutes.login);},child: const Text("login"),color: Colors.brown,),
const SizedBox(height: 40,),])));
  }
}