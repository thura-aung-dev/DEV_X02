import 'package:flutter/material.dart';
import 'package:get/get.dart';
class R3Page extends StatelessWidget{

  const R3Page({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('R3'),
       centerTitle: true,
     ),
     body: Center(
       child: Text('Hi R3 ${Get.arguments['argVal']}'),
     ),
   );
  }



}