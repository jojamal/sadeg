import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../core/constans/apptheme.dart';
import '../core/services/services.dart';



class Localcontroller extends GetxController{
  Locale? languagel ;

Appservices langservice = Get.find();

ThemeData Appthemme = themeEnglish;

  changelang (String langcode){
  Locale  local = Locale(langcode);
  langservice.sharedpref.setString('lang',langcode);
  Appthemme = langcode =='ar' ? themeArabic:themeEnglish;
  Get.updateLocale(local);
  Get.changeTheme(Appthemme);
 }
 pgermissionlocation() async {
   bool serviceEnabled;
  LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();// check if servises of llocation is enable 
 if (!serviceEnabled) {Get.snackbar("yo foo", "need pernission for location ");}
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied)
     {Get.snackbar("yo cunt", "cant use the app whitout location ");}}
       if (permission == LocationPermission.deniedForever) {Get.snackbar("fuck this", "get da fuckout of here ");

 }
 @override
  void onInit() {
     pgermissionlocation();
    // requestpermetionnotification();
    // fcmconfig();
    String? sharedpreflangeget = langservice.sharedpref.getString('lang');
    if (sharedpreflangeget=='ar')
    {languagel= const Locale('ar');
    Appthemme = themeArabic;
    }

    else if (sharedpreflangeget=='en')
     {languagel= const Locale('ar');
     Appthemme = themeEnglish;
     }

    else {languagel= Locale(Get.deviceLocale!.languageCode);}

    super.onInit();
  }
}}