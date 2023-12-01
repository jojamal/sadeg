import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shooping/controller/Auth/verifiycol.dart';
// import '../../../controller/Auth/forgetpasscol.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/handlingdata.dart';
// import '../../widget/onboarding/auth/authfeldtext.dart';
// import '../../widget/onboarding/auth/costomsinginauth.dart';
/////////////////////


class Verifiycodepage extends StatelessWidget{
  const Verifiycodepage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(verifiycontrollerimp());
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue ,elevation: 0.0,
        title:const Text('verifiy code',
        style: TextStyle(color: Color.fromARGB(255, 23, 29, 34),fontSize: 40 ),),
      ), 
//////////////////////////      
      body: GetBuilder<verifiycontrollerimp>(builder: (controller) => 
      Handlingdataview( status: controller.status,widget: Container(
        padding:const EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
        margin:const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Text('2'.tr,
            textAlign: TextAlign.center,
            style:const TextStyle(fontSize: 20,color: Colors.black)
            ),

            const SizedBox(height: 20,),

            Container(
              margin:const EdgeInsets.all(15),
              child: 
              Text('3'.tr,
               textAlign: TextAlign.center,
              style:const TextStyle(fontSize: 10,color: Colors.black) , )
              ),

            const SizedBox(height: 20,),
            
             Container(
        child:
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(15),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true, 
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode){
                controller.checkcode(verificationCode);
               }, 
            ),
         ) 
         ],
        ),
      ),)
      ,)
      );  
    }
  }