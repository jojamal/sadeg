import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../core/localization/changelanguage.dart';
import '../widget/onboarding/languge.dart';

class Languge extends GetView<Localcontroller> {
  const Languge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('1'.tr,style: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 1, 41, 172)),),
          const SizedBox(height: 10,),
          langbuttoncusttom(TextButton:'ar',onPressed: (){
            controller.changelang('ar');
            Get.offAllNamed(Approutes.onbording);
          },),
          langbuttoncusttom(TextButton:'en',onPressed: (){
            controller.changelang('en');
              Get.offAllNamed(Approutes.onbording);


          },),

          
        ],),
      ),
    );
  }
}