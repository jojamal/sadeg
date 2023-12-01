import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/core/function/handlingdata.dart';
import 'package:shooping/data/datasource/remote/worker.dart';
import 'package:shooping/data/model/workermdl.dart';
import '../../core/class/statusrequst.dart';
import '../../core/services/services.dart';


class workercontroller extends GetxController{
  statusrequst status = statusrequst.none;
Appservices services = Get.find();
  workerData workerD =workerData(Get.find());
List categories=[];
int?selectedcategory;
late String categoryid;
List worker=[];



   getdata(categoryid) async{
    status = statusrequst.loading;
          print(categoryid);
          print(categories);
          print(selectedcategory);

    var respons = await workerD.getdata(categoryid);
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        worker.addAll(respons['data']);
      //  List listdata=(respons['data']);
      //    worker.addAll(listdata.map((e) => categoriemodle.fromJson(e)));        
        }else{
           status =statusrequst.failure;}}update();}
    
initaildata(){
categories=Get.arguments['categories'];
selectedcategory=Get.arguments['selectedcategory'];
categoryid=Get.arguments['categoryid'];
 getdata(categoryid);}


gotoproductdetails(workermodle workerm){
  Get.toNamed(Approutes.productdetails,arguments: {"workermodle":workerm});
}


@override
  void onInit() {
initaildata();
    super.onInit();
  }




}