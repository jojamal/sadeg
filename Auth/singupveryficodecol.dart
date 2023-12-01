import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';

import '../../core/constans/Routes.dart';
import '../../core/function/handlingdata.dart';
import '../../data/datasource/remotedata/veryficode.dart';


class singupveryficodecontroller extends GetxController{

late String verificationCode;
vertficodeData vertficodd =vertficodeData(Get.find());
statusrequst? status;
late List data=[];
String? email;


gotosuccessveryfi(){Get.toNamed(Approutes.successingup);}

resend(){
  vertficodd.resenddata(email);
}

veryfi( verificationCode){ getdata( verificationCode);}


 getdata( verificationCode)async{
    status = statusrequst.loading;
    update();
    var respons = await vertficodd.getdata(email,verificationCode);
    status = heandlingdata(respons);
    print(verificationCode);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        Get.toNamed(Approutes.successingup);
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