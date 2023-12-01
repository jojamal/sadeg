import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shooping/core/class/statusrequst.dart';

import '../../core/constans/Routes.dart';
import '../../core/function/handlingdata.dart';
import '../../data/datasource/remotedata/resetpassword/checkemaill.dart';


class forgetoasscontroller extends GetxController{

late TextEditingController email;
statusrequst status=statusrequst.none;
GlobalKey<FormState>formState = GlobalKey<FormState>(); 
resetpasscheckemailData checkemaill = resetpasscheckemailData(Get.find());



  chackemail() async{
  var formdata = formState.currentState;
  if(formdata!.validate()){
 status = statusrequst.loading;
 update();
    var respons = await checkemaill.getdata(email.text,);
    print("========================controll$respons");
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
     Get.offNamed(Approutes.veryficode,arguments: { "email": email.text });
      }else{
        Get.defaultDialog(title: "error",middleText: "this account already used",);
        status =statusrequst.failure;
      }
     }
      update();
  
  }
  

    
  }





@override
void onInit() {
  email = TextEditingController();

  super.onInit();
}

@override
void dispose() {
email.dispose();

super.dispose();
  }
  
}