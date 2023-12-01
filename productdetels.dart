import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooping/controller/productdetailscol.dart';
import 'package:shooping/view/widget/product/procetificate.dart';
import 'package:shooping/view/widget/product/productimade.dart';

class productdetails extends StatelessWidget {
  const productdetails({super.key,});

  @override
  Widget build(BuildContext context) {
    productdetailscontroller controller = Get.put(productdetailscontroller());
    return Scaffold(
      appBar: AppBar(title: Text('details'),),

      // bottomNavigationBar:productcart(onPressed: (){controller.add(controller.itemsmodl.itemId);},),

      body:ListView(
        
      children: [

      productimade(), 
           



          Container(padding: EdgeInsets.all(20),child: Text("${controller.workermod.workerName}",style: TextStyle(fontSize: 22,color: Colors.blue),),)  ,
         
          SizedBox(height: 20,),

          Container(padding: EdgeInsets.all(20),child: Text("${controller.workermod.workerDescr}",style: TextStyle(fontSize: 22,color: Colors.blue),),)  ,
     
          Row(children: [productcertificat()],
            ),
]
)
);
}
}