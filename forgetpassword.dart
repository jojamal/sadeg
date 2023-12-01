import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shooping/view/widget/Auth/textformfiled.dart';


import '../../../controller/forgetpassword/forgetpasswordcol.dart';
import '../../../core/class/handlingdata.dart';
import '../../../core/function/validetor.dart';

class fofgetpasswordpage extends StatelessWidget {
fofgetpasswordpage({super.key});

@override
Widget build(BuildContext context) {
  forgetoasscontroller controller = Get.put(forgetoasscontroller());
return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 183, 108),
        body:GetBuilder<forgetoasscontroller>(builder:(ccontroller) =>
        Handlingdataview(
   status: ccontroller.status,
  widget:
         Container(
        margin:    const EdgeInsets.all(15),
        child:  Form(
        key: controller.formState,
        child: SingleChildScrollView(
        child:     Column(
        children: [
const SizedBox(height: 100,),
        const Text("{forgetpassword}",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,),),
const SizedBox(height: 40,),
        const Text("the  required will be your Email ",style: TextStyle(fontSize: 18,),),               
const SizedBox(height: 60,),        
        textformfildcusttom(
          isnomber: false,
          valid: (val){return valedaitroinput(val,"Email",5,50);},
        hinttext: "inter your email",
        labeltext: const Text("Email"),
        icon: Icons.email,
        textEditingController: controller.email,),
        const SizedBox(height: 15,),
        const Row(children: [],),
const SizedBox(height: 20,),        
            Container(
            height: 80,
            child:MaterialButton(
            onPressed: (){ccontroller!.chackemail();},
            child: Text("checkmail"),
            shape: CircleBorder(side:BorderSide()),
            color: Colors.brown,) )       ]
       ),
      ),
    )),)));
  }
}