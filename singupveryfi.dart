import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../controller/Auth/singupveryficodecol.dart';
import '../../widget/Auth/custombutton.dart';

class singupveryficodepage extends StatelessWidget {
 singupveryficodepage({super.key});
@override
Widget build(BuildContext context) {
singupveryficodecontroller controller = Get.put(singupveryficodecontroller());

return  Scaffold(
        backgroundColor: Color.fromARGB(255, 6, 85, 37),
        body:Container(
        margin:   EdgeInsets.all(15),
        child:    Column(
        children: [
SizedBox(height: 100,),
        Center(child:Text ("",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),),
        Text("{veryficode}",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,),),
SizedBox(height: 40,),
        OtpTextField(
        borderRadius:BorderRadius.circular(20),
        fillColor: Colors.blue,
        fieldWidth:50,
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        showFieldAsBox: true, 
        onCodeChanged: (String code) {},
        onSubmit: (String verificationCode){controller.veryfi(verificationCode);},),
SizedBox(height: 20,),        
        Text("the  required will be the code ",style: TextStyle(fontSize: 18,),),               
SizedBox(height: 20,),        
         custombuttonlogin(onPressed: (){},text: "veryfi",),
         InkWell(onTap: (){controller.resend();},child: Text("Get new code"),)
        ])
      ),
    );
  }
}