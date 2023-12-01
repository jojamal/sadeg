import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/core/services/services.dart';
import 'package:shooping/data/datasource/remote/homedata.dart';
import 'package:shooping/data/model/workermdl.dart';

class searchcontroller extends GetxController{
Appservices services = Get.find();
 TextEditingController? search ;
homeData home =homeData(Get.find());
statusrequst status=statusrequst.none;
bool issearch=false;
List <workermodle>listitemdata=[];

  
  
 checksearch(val){
  if(val==""){
    status=statusrequst.none;
    issearch=false;
    }else{issearch=true;}
  update();
}

ontapesearchbutton(){
  issearch=true;
  searchdata();
  update();
}

// gotoproductdetails(workermodle itemsm){
//   Get.toNamed(Approutes.productdetails,arguments: {"itemsmodle":itemsm});
// }
  
  searchdata()async{ 
    status = statusrequst.loading;
    var respons = await home.searchdata(search!.text);
    status = heandlingdata(respons);
    print(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        listitemdata.clear();
      List responsdata=respons['data'];
         listitemdata.addAll(responsdata.map((e) => workermodle.fromJson(e)));
       }else{
        Get.defaultDialog(title: "woring",textCustom: "invalid code!!!");
        status =statusrequst.failure;}}
    update();
  }



@override
void onInit() {
searchdata();
search=TextEditingController();
super.onInit();
}
}