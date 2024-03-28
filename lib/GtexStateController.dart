import 'package:flutter/material.dart';
import 'package:get/get.dart';
///This project all about getx statemanagement and how to use this
///Dependency Binding class
class GtexDependencyBinder extends Bindings{
  @override
  void dependencies() {
   Get.put(GCounterStateController());
  }
}

///Our main ui class
class GtexStateController extends StatelessWidget {
  const GtexStateController({super.key});

  @override
  Widget build(BuildContext context) {
    ///better approach
    final GCounterStateController C=Get.find<GCounterStateController>();
   ///Reactive approach
    // GCounterStateController C = GCounterStateController();
    return Scaffold(
      body: Center(
        ///Counter App With Gtex State Controller___________((((Rafat J.M Sir))))
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: const Text('Rounting'),
          ),
          const SizedBox(
            height: 100,
          ),
          ///Reactive approach
          // Obx(
          //   () => Text(
          //     '${C.counter}',
          //     style: const TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          ///Better approach
        GetBuilder<GCounterStateController>(
          builder: (controller) {
            return Text(
                  '${controller.counter}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                );
          }
        ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          C.increment(1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
///aita hoilo amar main state er ai state nia kaj korar jonno amar eto kisu
class GCounterStateController extends GetxController {
  ///RxInt,obs reactive approach ektu beshi memory consume korea
  // RxInt _counter = 0.obs;
  // RxInt get counter => _counter;
  ///Now iam writing another better approach
  int _counter=0;
  int get counter=>_counter;

  void increment(int value) {
    _counter += value;
    update();
  }
}
///Todo ->code against abstruction->dependency injection->dependency inversion