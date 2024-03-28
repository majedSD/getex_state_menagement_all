import 'package:flutter/material.dart';

class CounterAppScreen extends StatefulWidget {
  const CounterAppScreen({super.key});

  @override
  State<CounterAppScreen> createState() => _CounterAppScreenState();
}

class _CounterAppScreenState extends State<CounterAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter App')),
        backgroundColor: Colors.pinkAccent,
        foregroundColor:Colors.black,
      ),
      body:const Column(
        children: [
          ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {

        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
