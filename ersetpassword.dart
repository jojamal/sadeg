import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/handlingdata.dart';
import 'package:shooping/core/function/validetor.dart';
import '../../../controller/Auth/resetpasswordcol.dart';
import '../../widget/onboarding/auth/costomsinginauth.dart';
import '../../widget/onboarding/auth/textformfeld.dart';
/////////////////////


class Resetpasswordpage extends StatelessWidget{
  const Resetpasswordpage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(resetpasscontrollerimp());
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue ,elevation: 0.0,
        title:const Text(' new password',
        style: TextStyle(color: Color.fromARGB(255, 23, 29, 34),fontSize: 40 ),),
      ), 
//////////////////////////      
      body: GetBuilder<resetpasscontrollerimp>(builder: (controller) =>
      Handlingdataview(
         status: controller.status,
      widget: Container(
        padding:const EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
        margin:const EdgeInsets.only(top: 20),
        child: Form(
          key: controller.formreset,
          child: ListView(
            children: [
              Text('10'.tr,
              textAlign: TextAlign.center,
              style:const TextStyle(fontSize: 20,color: Colors.black)
              ),
        
              const SizedBox(height: 20,),
        
              Container(
                margin:const EdgeInsets.all(15),
                child: 
                Text('11'.tr,
                 textAlign: TextAlign.center,
                style:const TextStyle(fontSize: 10,color: Colors.black) , )
                ),
        
              const SizedBox(height: 20,),
        
              textforrmcustom(
                isnumber: false,
                 valid: (val){
                   return valedaitroinput(val!, 'password', 5, 50);
                  
                },
              hinttext: 'inter ypur password',
              labeltext: 'password',
              iconform: Icons.email_outlined,
              mycontroller: controller.password,),
        
                const SizedBox(height: 20,),
        
              textforrmcustom(
                isnumber: false,
                 valid: (val){
                   return valedaitroinput(val!, 'password', 5, 50);
                },
              hinttext: 'rerewrite ypur password',
              labeltext: 'password',
              iconform: Icons.email_outlined,
              mycontroller: controller.repassword,),
        
        const SizedBox(height: 20,),

         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [custombuttomn(text: 'save',onPressed: (){controller.resetpassword();},),
           custombuttomn(
            text: 'save',
            onPressed: (){controller.gotosuccessreset();},)
            
              ],
             )
            ],
          ),
        ),
      ),)

       )
    );
  }
} 