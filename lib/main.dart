
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex_state_menagement/CounterAppWithGtexStateController.dart';
import 'package:getex_state_menagement/GSC_reactive_approach.dart';
import 'package:getex_state_menagement/GtexStateController.dart';
import 'package:getex_state_menagement/home_page_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      ///In this page i am learning about named routing and how to work this
      ///name routing the extra features of named routing is transition
      initialRoute:'/homeScreen',
      getPages:[
        GetPage(name:'/homeScreen', page:()=>const HomePageScreen(),transition: Transition.leftToRight),
        GetPage(name:'/P1', page:()=>const StateControllerWithCounterApp(),transition: Transition.zoom),
        GetPage(name:'/P2', page:()=>const CounterAppWithGtexStateController(),transition: Transition.fade),
        GetPage(name:'/P3', page:()=>const CounterAppGStateController(),transition: Transition.circularReveal),
        // GetPage(name:'/P4', page:()=>const Product4(),transition: Transition.downToUp),
      ],
    );
  }
}
