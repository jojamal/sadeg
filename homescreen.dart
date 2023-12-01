import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/controller/Auth/homescreencol.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/view/widget/homebottomappbar.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool active =false;
    Get.put(homescreencontroller());
  return
GetBuilder<homescreencontroller>(builder:(controller) =>  Scaffold(
backgroundColor: Colors.brown,      
floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.shopping_basket),),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
bottomNavigationBar:homebottomappbar(),
body: controller.listpages.elementAt(controller.currentpage)
),


);
}
}