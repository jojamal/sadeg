import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shooping/core/class/handlingdata.dart';
import 'package:shooping/core/function/Alertextapp.dart';
import 'package:shooping/core/function/validetor.dart';
import '../../../controller/Auth/singupcol.dart';
// import '../../../core/localization/changelanguage.dart';
import 'package:get/get.dart';
// import '../../widget/onboarding/auth/authfeldtext.dart';
import '../../widget/onboarding/auth/costomsinginauth.dart';
import '../../widget/onboarding/auth/textformfeld.dart';
// import '../../widget/onboarding/auth/imageauth.dart';
// import '../../widget/onboarding/auth/textformfeld.dart';


class singuppage extends StatelessWidget{
   singuppage({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(singupcontrollerimp());

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue ,elevation: 0.0,
        title:const Text('singup page',
        style: TextStyle(color: Color.fromARGB(255, 23, 29, 34),fontSize: 40 ),),
      ), 
      

      body: WillPopScope(
        onWillPop: Alertexitapp,
      child:  GetBuilder<singupcontrollerimp>
      (builder:(controller) => 
Handlingdataview( status: controller.status,widget: Container(
        padding:const EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
        margin:const EdgeInsets.only(top: 20),
             child: Form(
             key:controller.FormStat ,
             child: ListView(
             children: [
              Text('4'.tr,
              textAlign: TextAlign.center,
              style:const TextStyle(fontSize: 20,color: Colors.black)
              ),
        
              const SizedBox(height: 20,),
        
              Container(
                margin:const EdgeInsets.all(15),
                child: 
                Text('5'.tr,
                 textAlign: TextAlign.center,
                style:const TextStyle(fontSize: 10,color: Colors.black) , )
                ),
        
              const SizedBox(height: 20,),
        
              textforrmcustom(
                isnumber: false,
                valid: (val){
                  return valedaitroinput(val!, 'email', 5, 50);
        
                },
              hinttext: 'inter ypur email',
              labeltext: 'Email',
              iconform: Icons.email_outlined,
              mycontroller: controller.email,),
        
                const SizedBox(height: 20,),
        
              GetBuilder<singupcontrollerimp>
              (builder: (controller)=> textforrmcustom(
                obscureText: controller.isshowtextup,
                onTapicon: (){
                       controller.showpassword();
                },
                isnumber: false,
                 valid: (val){
                   return valedaitroinput(val!, 'passeord', 5, 50);
        
                  
                },
                hinttext: 'inter ypur password',
                labeltext: 'password',
                iconform: Icons.lock_outlined,
                mycontroller: controller.password,),),
        
                const SizedBox(height: 20,),
        
              textforrmcustom(
                isnumber: true,
                 valid: (val){
                 return valedaitroinput(val!, 'phonenemper', 5, 50);
        
                },
              hinttext: 'inter ypur phonenember',
              labeltext: 'phone',
              iconform: Icons.phone_outlined,
              mycontroller: controller.phone,),
        
                const SizedBox(height: 20,),
        
             textforrmcustom(
              isnumber: false,
               valid: (val){
                return valedaitroinput(val!, 'username', 5, 50);
                  
                },
              hinttext: 'inter ypur user name',
              labeltext: 'user',
              iconform: Icons.person_2_outlined,
              mycontroller: controller.username,),
        
        
          custombuttomn(
            text: 'singup',
            onPressed: (){
              controller.singup();
            },
        
        ),
        const SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(' have account ?'),
        InkWell(
          onTap: (){controller.gotosinginpage();},
          child:Text(' Save',style: TextStyle(color: Colors.amber),),)
              ],
             )
            ],
          ),
        ),
      ),)       
      ), 
      )
    );
  }
} 