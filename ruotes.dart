
import 'package:shooping/appmidelware.dart';
import 'package:shooping/core/class/changelangu.dart';
import 'package:shooping/core/constans/Routes.dart';
import 'package:shooping/view/screen/Auth/home.dart';
import 'package:shooping/view/screen/Auth/homescreen.dart';
import 'package:shooping/view/screen/address/add.dart';
import 'package:shooping/view/screen/address/add2.dart';
import 'package:shooping/view/screen/address/view.dart';
import 'package:shooping/view/screen/auth/login.dart';
import 'package:shooping/view/screen/chose.dart';
import 'package:shooping/view/screen/emoply/add.dart';
import 'package:shooping/view/screen/emoply/view.dart';
import 'package:shooping/view/screen/productdetels.dart';
import 'package:shooping/view/screen/worker/view.dart';
import 'view/screen/auth/ersetpassword.dart';
import 'view/screen/auth/forgetpassord.dart';
import 'view/screen/auth/singup.dart';
import 'view/screen/auth/succesresttpass.dart';
import 'view/screen/auth/successingup.dart';
import 'view/screen/auth/verifiy.dart';
import 'view/screen/auth/verifiy_for_singup.dart';
import 'view/screen/onboarderring.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes=[
  // GetPage(name: '/' , page: ()=> Languge(),middlewares: [appmiddelware()]),
  GetPage(name: '/' , page: ()=> homescreen()),
  GetPage(name: Approutes.login , page: ()=>  Login(),),
  GetPage(name: Approutes.onbording , page: ()=>  Onboarderring(),),
  GetPage(name:Approutes.singup , page: ()=>  singuppage()),
  GetPage(name: Approutes.fofgetpassword , page: ()=>  Forgetpasswordpage(),),
  GetPage(name: Approutes.resetpassword, page: ()=>  Resetpasswordpage(),),
  GetPage(name:  Approutes.veryficode , page: ()=>  Verifiycodepage(),),
  GetPage(name:  Approutes.successveryficode, page: ()=>  success_reset_password(),),
  GetPage(name: Approutes.successingup , page: ()=>  success_singup(),),
  GetPage(name: Approutes.singupveryficode , page: ()=> Verifiysinguppage(),),
  // GetPage(name: Approutes.           ,page: ()=> Test(),),
  GetPage(name: Approutes.checkemail           ,page: ()=> Forgetpasswordpage(),),
  GetPage(name: Approutes.resetpassword           ,page: ()=> Resetpasswordpage(),),
  GetPage(name: Approutes.veryficode           ,page: ()=> Verifiycodepage(),),
  GetPage(name: Approutes.home           ,page: ()=>  homepage(),),

  GetPage(name: Approutes.workerpage           ,page: ()=> const workerpage(),),
  GetPage(name: Approutes.choseapp           ,page: ()=> const choseapp(),),
  GetPage(name: Approutes.productdetails           ,page: ()=> const productdetails(),),
  GetPage(name: Approutes.employer           ,page: ()=>  employer(),),
  GetPage(name: Approutes.addworker           ,page: ()=>  addworker(),),
  GetPage(name: Approutes.addresspage           ,page: ()=>  addresspage(),),
  GetPage(name: Approutes.addaddresspage2           ,page: ()=>  addaddresspage2(),),
  GetPage(name: Approutes.addaddresspage           ,page: ()=>  addaddresspage(),),
  GetPage(name: Approutes.homescreen           ,page: ()=>  homescreen(),),




];




    



