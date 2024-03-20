
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Home Page '),
        backgroundColor: Colors.purpleAccent,
      ),
      body:Center(
        child: ElevatedButton(
          onPressed:(){
            Get.toNamed('/P1');
          },
          child: const Text('Routing'),
        ),
        ///This is all about getx Storage this is same SharedPreference
        // child:Column(
        //   children: [
        //     ElevatedButton(onPressed:(){
        //       GetStorage().write(
        //           'Profile','Majedul Islam',
        //       );
        //       Get.snackbar('Data store Successfully', 'Bye Bye');
        //     }, child:const Text("Store Data")),
        //     const SizedBox(height: 100),
        //     ElevatedButton(onPressed:(){
        //        var name=GetStorage().read('Profile');
        //        Get.snackbar(name,'this is my name');
        //     }, child:const Text("Read Data")),
        //     const SizedBox(height: 100),
        //     ElevatedButton(onPressed:(){
        //       ///Remove all the data from Getx storage
        //      //GetStorage().erase();
        //      ///Remove only one data from this storage
        //       GetStorage().remove('Profile');
        //     }, child:const Text("Erase Data")),
        //     const SizedBox(height: 100),
        //   ],
        // ),
        // child:ElevatedButton(
        //   onPressed: () {
        //     Get.toNamed('/P1');
        ///Getx Snackbar and how to work this snackbar
        //     // Get.snackbar(
        //     //   'Hi','Hello getx',
        //     //   snackPosition: SnackPosition.BOTTOM,
        //     //   showProgressIndicator: true,
        //     //   backgroundColor: Colors.cyanAccent,
        //     //   colorText: Colors.black,
        //     //   borderRadius: 20,
        //     //   margin: const EdgeInsets.all(10),
        //     //   padding: const EdgeInsets.all(10),
        //     //   icon: const Icon(Icons.add,color: Colors.black),
        //     //   duration:const Duration(seconds: 30),
        //     //   isDismissible: false,
        //     //   animationDuration: Duration(seconds: 2),
        //     // );
        ///Getx dialogbox and how to work this dialog
        //     // Get.defaultDialog(
        //     //     title: 'Delet Alert',
        //     //     titleStyle:const TextStyle(color: Colors.white),
        //     //     titlePadding:const EdgeInsets.all(1),
        //     //
        //     //     middleText: 'Once delet,you can not get it back',
        //     //     middleTextStyle:const TextStyle(color: Colors.white),
        ///when given the content the middle text can not show
        //     //     content:const Column(
        //     //       children: [
        //     //         Text('Hello 1',style:TextStyle(color: Colors.white),),
        //     //         Text('Hello 2',style:TextStyle(color: Colors.white),),
        //     //         Text('Hello 3',style:TextStyle(color: Colors.white),),
        //     //         Text('Hello 4',style:TextStyle(color: Colors.white),),
        //     //       ],
        //     //     ),
        //     //     backgroundColor: Colors.black,
        //     //     radius: 5,
        //     //     barrierDismissible: false,
        //     //
        //     //
        //     //   textCancel: 'Delet',
        //     //   textConfirm:'Edit',
        //     //   confirmTextColor: Colors.white,
        //     //   cancelTextColor: Colors.white,
        //     //   onCancel:()=>{
        //     //       Get.back(closeOverlays: true),
        //     //   },
        //     //   onConfirm: ()=>{
        //     //       Get.back(closeOverlays: true),
        //     // }
        //     // );
        ///Getx bottom sheet and how to work this bottom sheet
        //     // Get.bottomSheet(
        //     //   SizedBox(
        //     //     height: 150,
        //     //     width: double.infinity,
        //     //     //color:Colors.cyanAccent,
        //     //     child: Column(
        //     //       children: [
        //     //         const Text('Button 1'),
        //     //         const Text('Button 2'),
        //     //         const Text('Button 3'),
        //     //         const Text('Button 4'),
        //     //         const Text('Button 5'),
        //     //         ElevatedButton(onPressed:(){
        //     //          Get.back(closeOverlays: true);
        //     //         }, child:const Text('Cancel'),),
        //     //       ],
        //     //     ),
        //     //   ),
        //     //   enableDrag: false,
        //     //   isDismissible: true,
        //     //   backgroundColor: Colors.cyanAccent,
        //     //   barrierColor:Colors.purple,
        //     // );
        //
        //   },
        //   child:const Text("Click me"),
        // )
      ),
    );

  }
}
