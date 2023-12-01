
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/data/datasource/remote/auth/FBresetpassword.dart';


abstract class resetpasswordcontroller extends GetxController{

  resetpassword();
  gotosuccessreset();
}

class resetpasscontrollerimp extends resetpasswordcontroller{

GlobalKey<FormState> formreset = GlobalKey<FormState>();
FBresetpassData resetpassData = FBresetpassData(Get.find());
    late String email;
    late TextEditingController password;
    late TextEditingController repassword;
    statusrequst status= statusrequst.none;
    List data =[];


 @override
  resetpassword()async {
    if(password.text!=repassword.text)return Get.defaultDialog(title:'data',textCustom: 'unsimuler password');
    var formdata = formreset.currentState;
  if(formdata!.validate()){
status = statusrequst.loading;
    update();
    var respons = await resetpassData.postdata(email,password.text);
    print("========================controll$respons");
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        // data.addAll(respons['data']);
     Get.offNamed(Approutes.successingup,arguments: {});//this for transfaring from pag to anather
      }else{
        Get.defaultDialog(title: "error",middleText: "this account already used",);
        status =statusrequst.failure;
      }
     }
      update();
  
  }
  }
    
  


  @override
  gotosuccessreset() {Get.toNamed(Approutes.singupveryficode);

   
  }
@override
  void onInit() {
   email= Get.arguments['email'];

    password   =TextEditingController();
    repassword =TextEditingController();

    super.onInit();
  }

  
@override
  void dispose() {

    password.dispose();
    repassword.dispose();

    super.dispose();
  }
  
  

}