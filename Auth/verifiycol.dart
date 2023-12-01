
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/data/datasource/remote/auth/FBverificode.dart';

import '../../core/constans/Routes.dart';


abstract class verifiycontroller extends GetxController{

    FBverificode FBverificodedata = FBverificode(Get.find());

  checkcode(verifiycode);
  gotoresetpass();
}

class verifiycontrollerimp extends verifiycontroller{
  String? email;
  statusrequst status = statusrequst.none;
    List data =[];


 @override
  checkcode(verifiycode) async{
    status = statusrequst.loading;
    update();
    var respons = await FBverificodedata.postdata(verifiycode,email);
    print("========================controll$respons");
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        // data.addAll(respons['data']);
     Get.offNamed(Approutes.fofgetpassword,arguments: {"email":email});//this for transfaring from pag to anather
      }else{
        Get.defaultDialog(title: "error",middleText: "this account already used",);
        status =statusrequst.failure;
      }
     }
      update();
  
  
  
    
  }


  @override
  gotoresetpass() {Get.toNamed(Approutes.resetpassword);

   
  }
@override
  void onInit() {

   email= Get.arguments['email'];

    super.onInit();
  }

  

}