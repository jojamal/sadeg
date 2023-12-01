import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shooping/view/screen/Auth/home.dart';
import 'package:shooping/view/screen/address/view.dart';


class homescreencontroller extends GetxController{
int currentpage=0;


List<Widget> listpages=[


    homepage(),
    addresspage(),
Container(child:Text("data") ,) ,
   Container(child:Text("data") ,) ,
];

List titlebottonappbar=[
 {"title":'home',"icon":Icons.home},
 {"title":'settings',"icon":Icons.settings},
 {"title":'orders',"icon":Icons.gif_box},
 {"title":'pet-store',"icon":Icons.pets},

];

changepage(int currentpageindex){
currentpage=currentpageindex;
update();
}
}