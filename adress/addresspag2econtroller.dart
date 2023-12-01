import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/core/services/services.dart';
import 'package:shooping/data/datasource/remote/adress.dart';



class addresspag2econtroller extends GetxController{
statusrequst status=statusrequst.none;
addressData addressd =addressData(Get.find());
List<Marker> markers=[];
Appservices services = Get.find(); 
TextEditingController? city;
TextEditingController? name;
TextEditingController? street;

String? lat;
String?lang;


initaialdata(){
  city=TextEditingController();
  name=TextEditingController();
  street=TextEditingController();
  lat = Get.arguments["lat"];
  lang = Get.arguments["lang"];
  print(lat);
  print(lang);
}


add()async{
     status = statusrequst.loading;
     update();
    var respons = await addressd.adddata(
      services.sharedpref.getInt('id'),
      city!.text,
      street!.text,
      lat,
      lang,
      name!.text,
      );
    print("============================$respons");

    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
    if(respons['status']=="success"){
      Get.toNamed(Approutes.home);
      }else{
      status =statusrequst.failure;
}
}  update();
}

@override
  void onInit() {

initaialdata();
    super.onInit();
  }
}