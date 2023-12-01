import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/core/services/services.dart';
import 'package:shooping/data/datasource/remote/homedata.dart';
import 'package:shooping/data/model/categorymdl.dart';
import 'package:shooping/data/model/workermdl.dart';







class searchmixcontroller extends GetxController{

homeData homesearch =homeData(Get.find());
statusrequst status = statusrequst.none;
Appservices services = Get.find();
late TextEditingController search;
List<categoriemodle>searchworkerlist=[];
 bool issearch=false;


  void onInit() {
    search=TextEditingController();
      update();
    super.onInit();
  }
  
  checksearch(val){
  if(val==""){issearch=false;}else{issearch=true;}
  update();
}

ontapesearchbutton(){
  issearch=true;
  searchgetdata();
  update();
}


    searchgetdata() async{
    status = statusrequst.loading;
    update();
    var respons = await homesearch.searchdata(search.text);
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        searchworkerlist.clear();
      List  responsdata=respons['data'];
      searchworkerlist.addAll(responsdata.map((e) => categoriemodle.fromJson(e)));
           }else{status =statusrequst.failure;}}update();
  }

   gotoproductpag(itemmodl) {
  Get.toNamed(Approutes.productdetails,arguments:{"searchworkerlist":searchworkerlist});
  }
}