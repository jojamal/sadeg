import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


import '../../../controller/forgetpassword/veryficodecol.dart';
import '../../widget/Auth/custombutton.dart';

class veryficodepage extends StatelessWidget {
 veryficodepage({super.key});
veryficodecontroller controller = Get.put(veryficodecontroller());
@override
Widget build(BuildContext context) {

return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 6, 85, 37),
        body:Container(
        margin:   const EdgeInsets.all(15),
        child:    Column(
        children: [
const SizedBox(height: 100,),
        const Center(child:Text ("",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),),
        const Text("{veryficode}",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,),),
const SizedBox(height: 40,),
        OtpTextField(
        borderRadius:BorderRadius.circular(20),
        fillColor: Colors.blue,
        fieldWidth:50,
        numberOfFields: 5,
        borderColor: const Color(0xFF512DA8),
        showFieldAsBox: true, 
        onCodeChanged: (String code) {},
        onSubmit: (String verificationCode){controller.veryfi(verificationCode);},),
const SizedBox(height: 20,),        
        const Text("the  required will be the code ",style: TextStyle(fontSize: 18,),),               
const SizedBox(height: 20,),        
         const custombuttonlogin(text: "veryfi",),
        ])
      ),
    );
  }
}