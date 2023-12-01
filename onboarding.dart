
// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';
import '../core/services/services.dart';
import '../data/datasource/static.dart';


abstract class Onboarding_Controller extends GetxController{




 next();

onpagechanget(int index);

}





class Onboarding_Controllerimp extends Onboarding_Controller { 

late PageController pageController;
int carentpage=0;

Appservices middelwareservices =Get.find();


 @override
  next() {

    carentpage++;
    if(carentpage > onboarderinglist.length -1){
      middelwareservices.sharedpref.setString('step', '1');
      Get.offAllNamed(Approutes.login);
    }else{
      pageController.animateToPage(carentpage, duration: Duration(milliseconds: 600), curve: Curves.easeInOut);

    }
    
 
  }

  @override
  onpagechanget(int index) {
    carentpage=index;
    update(); 
 
  }
@override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

}
