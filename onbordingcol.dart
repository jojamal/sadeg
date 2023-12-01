import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/data/datasource/static.dart';

import '../core/constans/Routes.dart';
import '../core/services/services.dart';




class Onbordingcontrollerimp extends GetxController{
  
  int curentpage = 0;
  late PageController pagecontroller ;
 Appservices services=Get.find();
  onpagechanged(int index){
   curentpage == index;
   update();
   }


  next(){

    curentpage++;
    if(curentpage>onboarderinglist.length-1){
      services.sharedpref.setString("step", "1");
      Get.toNamed(Approutes.login);
    }else{pagecontroller.animateToPage(curentpage, duration: Duration(milliseconds: 900), curve:Curves.easeInOut);}
  }


  @override
  void onInit() {
    pagecontroller=PageController();
    update();
    super.onInit();
  }
}