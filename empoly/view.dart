import 'package:get/get.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/data/datasource/remote/employ.dart';
import 'package:shooping/data/model/employ.dart';
import '../../core/class/statusrequst.dart';
import '../../core/services/services.dart';


class employcontroller extends GetxController{
  statusrequst status = statusrequst.none;
Appservices services = Get.find();
  empData empD =empData(Get.find());
List<empolynodle> empoly=[];




   getdata() async{
    status = statusrequst.loading;
    var respons = await empD.getdata();
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        // worker.addAll(respons['data']);
       List listdata=(respons['data']);
         empoly.addAll(listdata.map((e) => empolynodle.fromJson(e)));        
        }else{
        status =statusrequst.failure;}}
        update();}
initaildata(){getdata();}





@override
  void onInit() {
    initaildata();
    super.onInit();
  }




}