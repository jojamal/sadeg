import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shooping/core/constans/Routes.dart';

import '../../core/class/statusrequst.dart';
import '../../core/function/handlingdata.dart';
import '../../data/datasource/remotedata/resetpassword/resertpssword.dart';


class resetpasswordcontroller extends GetxController{

TextEditingController? password;
GlobalKey<FormState>formState = GlobalKey<FormState>(); 
statusrequst status=statusrequst.none;
resetpasswordData resetpassword = resetpasswordData(Get.find());
bool showpass=true;
String? email;
late TextEditingController repassword;
List data =[];
showpassword(){
showpass=showpass==true?false:true;
update();
}

  resetpasswordcol()async {
if(password!.text!=repassword.text)return Get.defaultDialog(title:'data',textCustom: 'unsimuler password');
var formdata = formState.currentState;
if(formdata!.validate()){
status = statusrequst.loading;
update();
var respons = await resetpassword.getdata(email,password!.text);
print("========================controll$respons");
status = heandlingdata(respons);
if(statusrequst.sucses==status){
if(respons['status']=="success"){
  // data.addAll(respons['data']);
Get.offNamed(Approutes.login,arguments: {});
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
  email = Get.arguments["email"];
  repassword =TextEditingController();
  password = TextEditingController();
  super.onInit();
}

@override
void dispose() {
password!.dispose();
repassword.dispose();
super.dispose();
  }
  
}





   

