
// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';

import '../../data/datasource/remote/auth/singupBE.dart';

abstract class sinupcontroller extends GetxController{

  singup();
  gotosinginpage();
}

class singupcontrollerimp extends sinupcontroller{

GlobalKey<FormState> FormStat = GlobalKey <FormState>();
  
   bool isshowtextup = true;
   late TextEditingController email;
   late TextEditingController password;
   late TextEditingController username;
   late TextEditingController phone;
    statusrequst status = statusrequst.none;
    singupData singupdata = singupData(Get.find());
    List data =[]; 

showpassword(){isshowtextup=isshowtextup==true?false:true;update();}


 @override
  singup() async{
  if(FormStat.currentState!.validate()){ 
    status = statusrequst.loading;
    update();
    var respons = await singupdata.postdata(username.text,password.text,email.text,phone.text);
    print("========================controll$respons");
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        // data.addAll(respons['data']);
     Get.offNamed(Approutes.singupveryficode,arguments: {"email": email.text });//this for transfaring from pag to anather
      }else{
        Get.defaultDialog(title: "error",middleText: "this account already used",);
        status =statusrequst.failure;
      }
     }
      update();
  }
  }


@override
  gotosinginpage() {Get.offNamed(Approutes.successingup);}

@override
  void onInit() {
    email=TextEditingController();
    password =TextEditingController();
    username =TextEditingController();
    phone= TextEditingController();
    super.onInit();
  }

  
@override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
  
 

}

 
   