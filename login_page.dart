import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shooping/core/class/handlingdata.dart';
import 'package:shooping/view/widget/Auth/logo.dart';
import '../../../controller/Auth/logincol.dart';
import '../../../core/function/validetor.dart';
import '../../widget/Auth/custombutton.dart';
import '../../widget/Auth/textformfiled.dart';
import '../../widget/Auth/textsingupontap.dart';

class loginpage extends StatelessWidget {
const loginpage({super.key});

@override
Widget build(BuildContext context) {
logincontrollerimp controller = Get.put(logincontrollerimp());

return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 183, 108),
        body:GetBuilder<logincontrollerimp>(builder:(controller) => 
      Handlingdataview(status: controller.statu,widget: Container(
        margin:   const EdgeInsets.all(15),
        child:  Form(
        key: controller.FormStat,
        child: SingleChildScrollView(
        child:  Column(       
        children: [
        const SizedBox(height: 100,),
        const Center(child:Text ("SING IN",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),),),
        const logo(),
        const Text("{welcome}",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,),),
        const SizedBox(height: 40,),
        const Text("the  required will be your Email and passwprd ",style: TextStyle(fontSize: 18,),),               
        const SizedBox(height: 60,),        
        textformfildcusttom(
          isnomber: false,
            valid: (val){return valedaitroinput(val,"email",5,50);},
            hinttext: "inter your email",
            labeltext: const Text("email"),
            icon: Icons.email,
            textEditingController: controller.email,),
        const SizedBox(height: 15,),
        GetBuilder<logincontroller>(builder:(ccontroller) => 
        textformfildcusttom(
          // obscuretext:controller.showpass ,
          isnomber: false,
          valid: (val){return valedaitroinput(val,"Password",5,50);},
          hinttext: "inter your password",
          labeltext: const Text("Password"),
          icon: Icons.password,
          onTapicon: () {
            // ccontroller.showpassword();
            },
          textEditingController:controller.password,),),
        const SizedBox(height: 15,),
        Row(children: [
        textsinguontap(onTap: (){
          controller.gotoforget();
          },text:"forget passwopd ?                       " ,),
        textsinguontap(onTap:(){controller.gotosinguppage();},text:"singup? " )],),
        const SizedBox(height: 20,),        
        custombuttonlogin(text: "login",onPressed: (){controller.login();},)
       
       
      ]),
     )
    
   )))));
  }
}