import 'package:flutter/material.dart';
import 'package:shooping/controller/Auth/homecol.dart';
import 'package:get/get.dart';
import 'package:shooping/controller/Auth/searchcol.dart';
import 'package:shooping/core/class/handlingdata.dart';
import 'package:shooping/data/model/categorymdl.dart';
import 'package:shooping/link_Api.dart';
import 'package:shooping/view/widget/Auth/home/appbar.dart';
import 'package:shooping/view/widget/categorylistwidgte.dart';

class homepage extends GetView<homecontrollerimp> {
const homepage( {super.key, });

@override
Widget build(BuildContext context) {
Get.put(homecontrollerimp());
return Scaffold(
  appBar: AppBar(title: Column(
    children: [
      Text("HOME"),

                 Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    child: Appbar(
                    onPressedsearch: () {controller.ontapesearchbutton();},
                    onChanged: (val){controller.checksearch(val);},
                    hinttext: "search",
                    labeltext:  Text("find "),
                    icon: Icons .search,
                    isnomber: false,
                    textEditingController:controller.search ,
                    valid: null,),
   ), 
  ],
 ),
),
  
  
  body:GetBuilder<homecontrollerimp>(builder:(controller) =>
   Handlingdataview(
     status:controller.status,
     widget:
     !controller.issearch?
     ListView.builder( 
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount:1 ,
          itemBuilder:(context,index)=>         
            Column(
              
              children: [ categorieslistwidget()  ]),
              ): Container(child:listsearchwidget(listcategoriemodle:controller.searchworkerlist,))
)),
);
}
}
class listsearchwidget extends GetView<homecontrollerimp> {
 final  List<categoriemodle>listcategoriemodle;
  const listsearchwidget({super.key, required this.listcategoriemodle});

  @override
  Widget build(BuildContext context) {
    Get.put(searchmixcontroller());
    return Column(
      children: [      

        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount:listcategoriemodle.length,
          itemBuilder: (conttext,index){
            return InkWell(
              onTap: (){controller.gotoproductpag(listcategoriemodle[index]);},
              child: Container(
                child: 
                Card(
                  child: Row(
                    children: [
                      Expanded(child:       
                         Image.network("${linkapi.uplaodimage}/${listcategoriemodle[index].categorieImage}" )),
                      Expanded(flex: 2,
                        child: ListTile(
                          title:Text("${listcategoriemodle[index].categorieName}") ,
                          subtitle: Text("${listcategoriemodle[index].categorieId}") , 
                        ))
                    ],
                  ),
                ),
              ),
            );
            },

        ),
        
      ],
    );
  }
}