import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterAppGStateController extends StatelessWidget {
  const CounterAppGStateController({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterStateController C=Get.put(CounterStateController());
    return Scaffold(
      body:Center(
        ///Counter App With Gtex State Controller___________((((Rafat J.M Sir))))
        child:Column(
            children: [
              const SizedBox(height: 50,),
              ElevatedButton(
                onPressed: (){

                }, child: const Text('Rounting'),
              ),
              const SizedBox(height: 100,),
              Obx(()=>Text('${C.counter}',style:const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              ),
            ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          C.increment();
        },
        child:const Icon(Icons.add),
      ),
    );;
  }
}
class CounterStateController extends GetxController{
  var counter=0.obs;
  increment(){
    counter+=1;
  }
}