import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/Auth/success_singup_col.dart';
import '../../widget/onboarding/auth/costomsinginauth.dart';

class success_singup extends StatelessWidget {
   success_singup({super.key});

  @override
  Widget build(BuildContext context) {
  successingupcontrollerimp controller= Get.put(successingupcontrollerimp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue ,elevation: 0.0,
        title:const Text('success sing up page',
        style: TextStyle(color: Color.fromARGB(255, 23, 29, 34),fontSize: 40 ),),
      ), 
      body:Container(
        child:
         Center(
           child: Column(
            children: [
              Icon(Icons.check_circle_outline),
              Container(child: 
                     custombuttomn(
                        text: 'SING in',
                         onPressed: (){controller.gotologin();},) ,)
                   ],
                 ),
         ),
         




    ));
  }
}