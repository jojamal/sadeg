
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/Auth/success_resetpass_col.dart';
import '../../widget/onboarding/auth/costomsinginauth.dart';

class success_reset_password extends StatelessWidget {
   success_reset_password({super.key});

  @override
  Widget build(BuildContext context) {
   successreetpasswordcontrollerimp controller = Get.put(successreetpasswordcontrollerimp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue ,elevation: 0.0,
        title:const Text('success reset password',
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
                        text: 'SING up',
                         onPressed: (){controller.gotologin();},) ,)
                   ],
                 ),
         ),
         




    ));
  }
}