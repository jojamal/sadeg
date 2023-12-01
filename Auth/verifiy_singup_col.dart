
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import '../../data/datasource/remote/auth/verifysingupBE.dart';

abstract class verifiy_singup_controller extends GetxController{

  checkcode();
  gotosuccessingup(String verificationCode);
}

class verifiy_singup_controllerimp extends verifiy_singup_controller{

  verifysingupData veryfisingupdata = verifysingupData(Get.find());
  String? email;
  statusrequst status = statusrequst.none;
  List data =[]; 



 @override
  checkcode() {}

  @override
  gotosuccessingup(verificationCode) async{
    status = statusrequst.loading;
    var respons = await veryfisingupdata.verifypostdata(email!,verificationCode);
    print("========================controll$respons");
    status = heandlingdata(respons);
      if(statusrequst.sucses==status){
      if(respons['status']=="success"){
      Get.toNamed(Approutes.successingup);
      }else{
        Get.defaultDialog(title: "error",middleText: "wrong veryficode!!!",);
        status =statusrequst.failure;  
        // Get.toNamed(Approutes.Rsuccessingup);

      }
      }
      update();
      }


      
@override
  void onInit() {

   email= Get.arguments['email'];
    super.onInit();
  }
   resend()async{  
    var respons = await veryfisingupdata.resendcodedata(email!);
    print("========================controll$respons");
    
      update();
      }


  

}