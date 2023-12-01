import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';

class choseapp extends StatelessWidget {
  const choseapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(padding: EdgeInsets.all(100),
        child: Center(
          child: Row(
            children: [

            MaterialButton(
              
                color: Colors.blue,
                child: Text("employ"),
                onPressed: (){Get.toNamed(Approutes.employer);}),
      
              SizedBox(width: 20,),
      
           
              MaterialButton(
                color: Colors.blue,
                child: Text("worker"),
                onPressed: (){Get.toNamed(Approutes.home);})
            ],
          ),
        ),
      ),
    );
  }
}