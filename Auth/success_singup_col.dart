
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shooping/core/constans/Routes.dart';
// import '../../core/constants/approutes.dart';

abstract class successingupcontroller extends GetxController{

  gotologin();
}

class successingupcontrollerimp extends successingupcontroller{


  @override
  gotologin() {Get.offNamed(Approutes.login);

  }
}