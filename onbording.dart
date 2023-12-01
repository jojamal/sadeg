import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/view/widget/onboarding/custom_page.dart';
import 'package:shooping/view/widget/onboarding/custombotten.dart';
import 'package:shooping/view/widget/onboarding/dot_conroller.dart';

import '../../controller/onbordingcol.dart';


class onbordingpage extends StatelessWidget {

const onbordingpage({super.key});

@override

Widget build(BuildContext context) {

Onbordingcontrollerimp controller = Get.put(Onbordingcontrollerimp());

return   Scaffold(

body:

Column(

children: [

SizedBox(height: 50,),

Expanded(flex: 2,child:
custom_page()),
       
SizedBox(height: 50,),
       
Expanded(flex: 1,child:Column(children: [Dot_controller(),
       
SizedBox(height: 50,),
       
           custombooten_onbording(text: "next",onPressed:(){controller.next();})   
       ],
       ),
       ),               
       ],
       ),
       );
       }
       }