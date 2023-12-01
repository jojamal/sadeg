import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/core/services/services.dart';
import 'package:shooping/data/model/loginmdl.dart';
import '../../data/datasource/remote/auth/loginBE.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class logincontroller extends GetxController{

  login();
  gotosinguppage();
  gotoforget();
}

class logincontrollerimp extends logincontroller{
   

  GlobalKey<FormState> FormStat = GlobalKey<FormState>();
   
late TextEditingController email;
late TextEditingController password;
statusrequst statu = statusrequst.none;
loginData logind=loginData(Get.find());
Appservices services = Get.find();
List<loginmodle> logindata =[]; 

 

 @override
 login() async{
   if(FormStat.currentState!.validate()){
    statu = statusrequst.loading;
    update();
 var respons = await logind.postdata(password.text,email.text);
    print("========================controlllll${respons['data']}");

    statu = heandlingdata(respons);
    if(statusrequst.sucses==statu){
      if(respons['status']=="success"){
        if(respons['data']['user_aproved']==1){
        services.sharedpref.setInt('id',respons['data']['user_id']);
        services.sharedpref.setString('username',respons['data']['user_name']);
        services.sharedpref.setString('email',respons['data']['user_email']);
        services.sharedpref.setInt('phone',respons['data']['user_phone']);//this biatch tack 1 day to get that list type must get [0]to reach the mean index
        services.sharedpref.setString('step','2');
     update();
      Get.offNamed(Approutes.choseapp);

     }else{ Get.offNamed(Approutes.singupveryficode,arguments: {"email": email.text });}
      }else{     
        Get.defaultDialog(title: "error",middleText: "!this email or password wrong!",);
        statu =statusrequst.failure;
        }}}else{}     
    update();
  }


  @override
  gotosinguppage() {Get.offNamed(Approutes.singup);
}

@override
  void onInit() { 
    FirebaseMessaging.instance.getToken().then((value) {print(value);String? token = value;});
    email=TextEditingController();
    password =TextEditingController();
    super.onInit();
  }

  
@override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();}
  
  @override
  gotoforget() {
    Get.toNamed(Approutes.fofgetpassword);
  }

}