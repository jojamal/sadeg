import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shooping/core/class/handlingdata.dart';
import 'package:shooping/core/function/Alertextapp.dart';
import 'package:shooping/core/function/validetor.dart';
import '../../../controller/Auth/logincol.dart';
import '../../../core/localization/changelanguage.dart';
import 'package:get/get.dart';
import '../../widget/onboarding/auth/costomsinginauth.dart';
import '../../widget/onboarding/auth/imageauth.dart';
import '../../widget/onboarding/auth/singupauth.dart';
import '../../widget/onboarding/auth/textformfeld.dart';


class Login extends GetView<Localcontroller>{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {   

      Get.put(logincontrollerimp());
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue ,elevation: 0.0,
        title:const Text('login page',
        style: TextStyle(color: Color.fromARGB(255, 23, 29, 34),fontSize: 40 ),),
      ), 
      

      body: WillPopScope(
        onWillPop: Alertexitapp,
      child:   GetBuilder<logincontrollerimp>(builder:(controller) => 
      Handlingdataview(status: controller.statu,widget:
        Container(
        padding:const EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
        margin:const EdgeInsets.only(top: 20),
        child: Form(
          key: controller.FormStat ,
          child: ListView(
            children: [
              Imageauthlogo(),
              Text('6'.tr,
              textAlign: TextAlign.center,
              style:const TextStyle(fontSize: 20,color: Colors.black)
              ),
        
              const SizedBox(height: 20,),
        
              Container(
                margin:const EdgeInsets.all(15),
                child: 
                Text('7'.tr,
                 textAlign: TextAlign.center,
                style:const TextStyle(fontSize: 10,color: Colors.black) , )
                ),
        
              const SizedBox(height: 20,),
        
              textforrmcustom(
                isnumber: false,
                 valid: (val){return valedaitroinput(val!, 'email', 5, 50);},
                 mycontroller: controller.email,
                 hinttext: 'enter your email',
                 labeltext: 'email',
                 iconform: Icons.email_outlined,
                
        ),
        
                 SizedBox(height: 20,),
        
                  textforrmcustom(
                    isnumber: false,
                     valid: (val){return valedaitroinput(val!, 'password', 5, 50);},
                     mycontroller: controller.password,
                     hinttext: 'enter your password',
                     labeltext: 'password',
                     iconform: Icons.lock_outlined,
                //  mycontroller: TextEditingController(),
        ),
        InkWell(onTap: () {controller.gotoforget();},
        child: Ink(child: Text('forget your password ?',textAlign: TextAlign.end,),)),
        
          custombuttomn(
            text: 'SING IN',
            onPressed: (){controller.login();},),

        SizedBox(height: 20,),
        
        singuptext(text: 'SING UP',onTap: (){controller.gotosinguppage();},)
        
         
             
                
        
        
            ],
          ),
        ),
        ),)
    )
    )
    );
  }
} 