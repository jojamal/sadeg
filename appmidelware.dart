
// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';

import 'core/services/services.dart';


class appmiddelware extends GetMiddleware{
    @override
  int? priority = 1;
  Appservices middelwareservices = Get.find();


@override
  RouteSettings? redirect(String? route)  {
    if(middelwareservices.sharedpref.getString('step')=='2'){
      return const RouteSettings(name: Approutes.home);
    }if(middelwareservices.sharedpref.getString('step')=='1'){
      return const RouteSettings(name: Approutes.login);
    }
  }
}
  