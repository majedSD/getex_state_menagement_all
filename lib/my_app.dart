import 'package:flutter/material.dart';
import 'package:getex_state_menagement/counter_app_screen.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:CounterAppScreen(),
      title: 'Counter App',
    );
  }

}