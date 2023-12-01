import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shooping/core/class/handlingdata.dart';
import 'package:shooping/core/function/validetor.dart';
import 'package:shooping/view/widget/onboarding/auth/costomsinginauth.dart';
import '../../../controller/Auth/forgetpasscol.dart';
import 'package:get/get.dart';
import '../../widget/onboarding/auth/textformfeld.dart';


class Forgetpasswordpage extends StatelessWidget{
  const Forgetpasswordpage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(forgetpasscontrollerimp());
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue ,elevation: 0.0,
        title:const Text('forgetpass page',
        style: TextStyle(color: Color.fromARGB(255, 23, 29, 34),fontSize: 40 ),),
      ), 
      body: GetBuilder<forgetpasscontrollerimp>(builder: (controller) =>
      Handlingdataview(status: controller.status,widget: Container(
        padding:const EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
        margin:const EdgeInsets.only(top: 20),
        child: Form(
          key: controller.fofmkey,
          child: ListView(
            children: [
              Text('8'.tr,
              textAlign: TextAlign.center,
              style:const TextStyle(fontSize: 20,color: Colors.black)
              ),
        
              const SizedBox(height: 20,),
        
              Container(
                margin:const EdgeInsets.all(15),
                child: 
                Text('9'.tr,
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

         Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          
          [
            custombuttomn(text: 'save',onPressed: (){controller.chackemail();},),
            
            const Text('check  '),
        InkWell(
          onTap: (){controller.chackemail();},
          child:const Text('  here',style: TextStyle(color: Colors.amber),),),
        
            
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