import 'package:get/get.dart';
import 'package:shooping/core/function/handlingdata.dart';

import '../../core/class/statusrequst.dart';
import '../../core/constans/Routes.dart';
import '../../data/datasource/remotedata/resetpassword/veryficode.dart';



class veryficodecontroller extends GetxController{
statusrequst? status;
String? email;
resetpassveryficodeData resetpassveryficode = resetpassveryficodeData(Get.find());



 veryfi( verificationCode)async{
    status = statusrequst.loading;
    update();
    var respons = await resetpassveryficode.getdata(email,verificationCode);
    status = heandlingdata(respons);
    print(verificationCode);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        Get.toNamed(Approutes.resetpassword,arguments: {"email":email});
      }else{
        Get.defaultDialog(title: "woring",textCustom: "invalid code!!!");
        status =statusrequst.failure;
      }
      
        }
        
    update();
  }



@override
void onInit() {
  email=Get.arguments["email"];
  super.onInit();
}
@override
void dispose() {

super.dispose();
  }
  
}