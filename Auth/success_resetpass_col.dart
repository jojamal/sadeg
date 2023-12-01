
// ignore_for_file: camel_case_types
// import 'package:flutter/widgets.dart';
// import '../../core/constants/approutes.dart';
import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';



abstract class successreetpasswordcontroller extends GetxController{

  gotologin();
}

class successreetpasswordcontrollerimp extends successreetpasswordcontroller{


  @override
  gotologin() {Get.offAllNamed(Approutes.login);

  }
}