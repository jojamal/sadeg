import 'package:flutter/material.dart';
import 'package:shooping/Bindings.dart';
import 'package:shooping/core/services/services.dart';
import 'package:get/get.dart';
import 'core/localization/changelanguage.dart';
import 'core/localization/translation.dart';
import 'ruotes.dart'; 
// import 'package:firebase_analytics/firebase_analytics.dart';

//  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
 
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservice();

// await FirebaseAnalytics.instance
//   .logBeginCheckout(
//     value: 10.0,
//     currency: 'USD',
//     items: [AnalyticsEventItem(itemName: 'Socks',itemId: 'xjw73ndnw',price: 10.0),],
//       coupon: '10PERCENTOFF');

  runApp(const MyApp());
}

 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   Localcontroller controller = Get.put(Localcontroller());
    return GetMaterialApp(
      translations: Apptranlation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.languagel,
      theme: controller.Appthemme,
      // home:// Test(),
      // const Languge(),
      // routes: routes,
      initialBinding: initialbinding(),
      getPages: routes,
     );
  }
}
