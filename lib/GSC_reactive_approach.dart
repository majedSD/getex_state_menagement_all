import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateControllerWithCounterApp extends StatelessWidget {
  const StateControllerWithCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt counter=0.obs;
    return Scaffold(
      body:Center(
        ///Reactive approach of getx state controller
        child:Column(
          children: [
            const SizedBox(height: 50,),
            ElevatedButton(
                onPressed: (){
                Get.toNamed('/P2');
                }, child: const Text('Rounting'),
            ),
            const SizedBox(height: 100,),
            Obx(()=>Text('$counter',style:const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
