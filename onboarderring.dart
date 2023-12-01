// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shooping/controller/onboarding.dart';
import 'package:shooping/view/widget/onboarding/custombotten.dart';
import 'package:get/get.dart';
import '../widget/onboarding/custom_page.dart';
import '../widget/onboarding/dot_conroller.dart';

class Onboarderring extends GetView<Onboarding_Controllerimp> {
  const Onboarderring({super.key});

  @override
  Widget build(BuildContext context) {
   Onboarding_Controllerimp Controller= Get.put(Onboarding_Controllerimp());
    
    return Scaffold(body:
      SafeArea(
        child:
         Column(
           children: [
             Expanded(flex: 2,
               child: custom_page()
             ),
             Expanded(
              flex: 1,
             child:Dot_controller()
             ),
           custombooten_onbording(text: "text",onPressed: () {controller.next();},)

           ],
         ),
      ));

    

  }
}