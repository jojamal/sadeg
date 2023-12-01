import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/controller/Auth/searchcol.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/data/datasource/remote/homedata.dart';
import 'package:shooping/data/model/categorymdl.dart';
import '../../core/services/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class homecontrollerimp extends searchmixcontroller{
// homeData homepostData = homeData(Get.find());
// statusrequst status = statusrequst.none;
// Appservices services = Get.find();
// // List<workermodle> workerlist=[];
// List? categories=[];
// List? worker=[];



  TextEditingController? hsearch;
Appservices services = Get.find();
homeData home =homeData(Get.find());
statusrequst status=statusrequst.none;
List categories=[];
List worker=[];
List<categoriemodle> catelist=[];


getdata()async{ status = statusrequst.loading;
    update();
    var respons = await home.getdata();
    status = heandlingdata(respons);
    print(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        categories.addAll(respons['categories']);
        worker.addAll(respons['worker']);
       }else{
        Get.defaultDialog(title: "woring",textCustom: "invalid code!!!");
        status =statusrequst.failure;}}
        update();
}

gotoworkerpage(List categories,selectedcategory, catid){Get.toNamed(Approutes.workerpage,
arguments: {
"categories":categories,
"selectedcategory":selectedcategory,
"categoryid":catid,
});}


// var fbm=FirebaseMessaging.instance;


@override
  void onInit(){
  search=TextEditingController();
getdata();

// fbm.getToken().then((token) {
// print("=======================================token=====================================================");
//  print(token);
//  print("============================================================================================");
// });
// FirebaseMessaging.onMessage.listen((event) {
// print("============================");
// print(event.notification!.body);
// print("=============================");
// });

////////////////////////////////////////
      // FirebaseMessaging.instance.subscribeToTopic('worker');
      update();
//////////////////////////////////////
///





    super.onInit();
  }

}


//  @override
//   void onInit() {
//     fbm.getToken().then((token) {
// print("============================================================================================");
//  print(token);
//  print("============================================================================================");
// });
// FirebaseMessaging.onMessage.listen((event) {
// print("============================");
// print(event.notification);
// print("=============================");
// });
  //     getdata();
  //     FirebaseMessaging.instance.subscribeToTopic('users');
  //     update();
  //   super.onInit();
  // }
