
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/core/function/uploadfile.dart';
import 'package:shooping/data/datasource/remote/employ.dart';
import 'package:shooping/data/datasource/remote/worker.dart';
import 'package:shooping/data/model/employ.dart';
import '../../core/class/statusrequst.dart';
import '../../core/services/services.dart';


class addworkercontroller extends GetxController{
  statusrequst status = statusrequst.none;
Appservices services = Get.find();
  workerData workerd =workerData(Get.find());
File? file;
TextEditingController?worker_name;
TextEditingController?worker_descr;
TextEditingController?worker_phone;
TextEditingController?worker_cat;

  adddata()async{
    status = statusrequst.loading;
    Map data={
      "worker_name":worker_name!.text,
      "worker_descr":worker_descr!.text,
      "worker_phone":worker_phone!.text,
      "worker_cat":worker_cat!.text,
    };
    var respons = await workerd.adddata(data,file!);
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        Get.toNamed(Approutes.home);
      }else{
        status =statusrequst.failure;
      }
        }
    update();
  }



showbottommenuecol(){
  showbottommenue(choseimagecamera,choseimagegallery);
}

choseimagegallery()async{
 file= await fileuploadgallery();
 update();
}  

choseimagecamera()async{
 file= await imageuploadcamira();
 update();}


@override
  void onInit() {
    worker_cat=TextEditingController();
    worker_phone=TextEditingController();
    worker_descr=TextEditingController();
    worker_name=TextEditingController();
    super.onInit();
  }




}