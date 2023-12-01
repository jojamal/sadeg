import 'package:get/get.dart';
import 'package:shooping/core/class/statusrequst.dart';
import 'package:shooping/core/services/services.dart';
import 'package:shooping/data/model/workermdl.dart';




class productdetailscontroller extends GetxController{

late workermodle workermod;
statusrequst status=statusrequst.none;
// cartData cartD =cartData(Get.find());
List data=[];
int priceorder=0;
int totalcountitems = 0;
Appservices services = Get.find();


// add(item_id)async{
//      status = statusrequst.loading;
//     var respons = await cartD.Addcartdata(
//       services.sharedpreferences.getInt('id'),item_id);
//     print("============================$respons");

//     status = heandlingdata(respons);
//     if(statusrequst.sucses==status){
//     if(respons['status']=="success"){
//       }else{
//         status =statusrequst.failure;
//       }
    
//         }  update();

// }

initaildata(){
  workermod=Get.arguments["workermodle"];

}


@override
void onInit() {
  initaildata();
super.onInit();
}
}