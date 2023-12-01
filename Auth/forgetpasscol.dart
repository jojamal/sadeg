
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/data/datasource/remote/auth/FBcheckmail.dart';


abstract class forgetpasscontroller extends GetxController{

  chackemail();
}

class forgetpasscontrollerimp extends forgetpasscontroller{


GlobalKey<FormState>fofmkey=GlobalKey<FormState>();

   late TextEditingController email;
 statusrequst status = statusrequst.none;
    FBcheckmailData chackemaildata = FBcheckmailData(Get.find());
    List data =[];



 @override
  chackemail() async{var formdata = fofmkey.currentState;
  if(formdata!.validate()){
 status = statusrequst.loading;
    update();
    var respons = await chackemaildata.postdata(email.text,);
    print("========================controll$respons");
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        // data.addAll(respons['data']);
     Get.offNamed(Approutes.fofgetpassword,arguments: { "email": email.text });//this for transfaring from pag to anather
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

    email=TextEditingController();
   

    super.onInit();
  }

  
@override
  void dispose() {

    email.dispose();
   
    super.dispose();
  }

}