import 'dart:async';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/core/services/services.dart';
import 'package:shooping/data/datasource/remote/adress.dart';
import 'package:shooping/data/model/adressmdl.dart';



class addresspageviewcontroller extends GetxController{
statusrequst status=statusrequst.none;
addressData addressd =addressData(Get.find());
List<Marker> markers=[];
Appservices services = Get.find(); 
double? lat;
double? lang;
List<adressmodle>data=[];


addmarkes(LatLng latLong){
  markers.clear();
  markers.add(Marker(markerId: MarkerId("1"),position: latLong));
  update();
  lang=latLong.longitude;
  lat=latLong.latitude;
  update(); 
}


Completer<GoogleMapController>? completecontroller =
Completer<GoogleMapController>();

 CameraPosition kLake = CameraPosition(
  bearing: 192.8334901395799,
  target: LatLng(37.43296265331129, -122.08832357078792),
  tilt: 59.440717697143555,
  zoom: 19.151926040649414);

 CameraPosition kGooglePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,);

addaddress(){
  Get.toNamed(Approutes.addaddresspage);
}


gotoaddaddresspage2(){
  Get.toNamed(Approutes.addaddresspage2,arguments: {"lat":lat.toString(),"lang":lang.toString()});
}


getdata()async{
     status = statusrequst.loading;
     update();
    var respons = await addressd.viewdata(
      services.sharedpref.getInt('id'));
    print("============================${ services.sharedpref.getInt('id')}");
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
    if(respons['status']=="success"){
      List listdata = respons['data'];
      data.addAll(listdata.map((e) => adressmodle.fromJson(e)));

      }else{
        status =statusrequst.failure;
      }
    
        }  update();

}


deletedata(adresdid){
   addressd.deletedata(adresdid);
   data.removeWhere((element) => element.addressId==adresdid);
   update();
}


initaldata()
{    getdata();
}

@override
  void onInit() {
    initaldata();
completecontroller= Completer<GoogleMapController>();
    super.onInit();
  }
}