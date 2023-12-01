import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:shooping/view/widget/Auth/custombutton.dart';
import 'package:shooping/view/widget/Auth/textformfiled.dart';

import '../../../controller/Auth/resetpasswordcol.dart';
import '../../../core/class/handlingdata.dart';
import '../../../core/function/validetor.dart';

class resetpasswordpage extends StatelessWidget {
 resetpasswordpage({super.key});

@override
Widget build(BuildContext context) {
 resetpasscontrollerimp controller= Get.put(resetpasscontrollerimp());
return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 183, 108),
        body:  Container(
        margin:    const EdgeInsets.all(15),
        child:  Form(
        key: controller.formreset,
        child: SingleChildScrollView(
        child:     Column(
        children: [
const SizedBox(height: 100,),
        const Text("{forgetpassword}",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,),),
const SizedBox(height: 40,),
        const Text("the  required will be your password ",style: TextStyle(fontSize: 18,),),               
const SizedBox(height: 60,),  
        textformfildcusttom(
          // obscuretext:controller.showpass ,
          isnomber: false,
          valid: (val){return valedaitroinput(val,"password",5,50);},
        hinttext: "inter your password",
        labeltext: const Text("password"),
        icon: Icons.password,
        onTapicon: () {
          // ccontroller.showpassword();
          },
        textEditingController: controller.password,),
        SizedBox(height: 30,),
        textformfildcusttom(
          // obscuretext:controller.showpass ,
          isnomber: false,
          valid: (val){return valedaitroinput(val,"repassword",5,50);},
        hinttext: "retypping your password",
        labeltext: const Text("repassword"),
        icon: Icons.password,
        onTapicon: () {controller.resetpassword();},
        textEditingController: controller.repassword,),
          SizedBox(height: 15,),
        const Row(children: [],),
const SizedBox(height: 20,),        
         custombuttonlogin(onPressed: (){
          // controller.resetpasswordcol();
          },text: "check",),
        
       ]),
      ),)));
    
  }
}