// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:scood_app/core/class/statusrequst.dart';
// import 'package:scood_app/core/constans/Routes.dart';
// import 'package:scood_app/core/function/handlingdata.dart';
// import 'package:scood_app/core/function/uploadfile.dart';
// import 'package:scood_app/data/datasource/remotedata/updateitems.dart';
// import 'package:scood_app/data/datasource/remotedata/viewcategorydata.dart';
// import 'package:scood_app/data/modle/itemsmd.dart';
// import 'package:drop_down_list/model/selected_list_item.dart';
// import 'package:shooping/core/class/statusrequst.dart';
// import 'package:shooping/core/constans/Routes.dart';
// import 'package:shooping/data/model/workermdl.dart';
// import 'package:shooping/link_Api.dart';

// class viewcitemscontrolller extends GetxController{

// late  TextEditingController item_name;
// late TextEditingController item_desc;  
// late TextEditingController item_count;  
// late TextEditingController item_descount;  
// late TextEditingController item_price;  
// late TextEditingController item_image;  
// late TextEditingController dropdownname; 
// late TextEditingController dropdownid; 

//  List<SelectedListItem> listdata=[]; 
//   itemsadminData itemsadminD = itemsadminData(Get.find());
//   List<workermodle> data =[];
// late statusrequst status;
//   categoryData categoryD = categoryData(Get.find());

// String? categoryitemid; 
// File? file;



//   viewdata()async{
//     status = statusrequst.loading;
//     var respons = await itemsadminD.getdata();
//     status = heandlingdata(respons);
//     if(statusrequst.sucses==status){
//       if(respons['status']=="success"){
//       List  listdata=respons['data'];
//         data.addAll(listdata.map((e) => itemsmodle.fromJson(e)));
        
//       }else{
//         status =statusrequst.failure;
//       }
//      }     
//     update();
//   }
  



// // Random(){}


// //     deletedata(id,imagename){
// //     itemsadminD.deletedata({"id":id,"imagename":imagename});
// // data.removeWhere((element) =>element.itemId==id )   ;
// // update();
// //   }


// // showbottommenuecol(){
// //   showbottommenue(choseimagecamera,choseimagegallery);
// // }

// // choseimagegallery()async{
// //  file= await fileuploadgallery();
// //  update();
// // }  

// // choseimagecamera()async{
// //  file= await imageuploadcamira();
// //  update();
// // }

// // gotoupdate(itemsmodle itemsmod){Get.toNamed(Approutes.updateitems,arguments: {"itemsmodl":itemsmod});}

// // sexsing(){ Get.toNamed(Approutes.sexdetails,arguments: {"itemsmod":data});}

// iniatialdata(){viewdata();}

// // gotoproductdetails(workermodle itemsm){
// //   Get.toNamed(Approutes.productdetails,arguments: {"itemsmodle":itemsm});
// // }
//   void onInit() {
//      item_name = TextEditingController();
//      item_desc= TextEditingController();
//      item_count= TextEditingController();
//      item_descount= TextEditingController();
//      item_price= TextEditingController();
//      item_image= TextEditingController();
//      dropdownname= TextEditingController();
//      dropdownid= TextEditingController();

//     iniatialdata();
//     super.onInit();
//   }


  
// }


