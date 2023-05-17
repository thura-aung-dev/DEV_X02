
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class R2Page extends StatelessWidget{

  const R2Page({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: const Text('R2'),
       centerTitle: true,
     ),
     body: Center(
       child: Text('Welcome from R2 ${Get.parameters['paraVal']}'),
     ),
   );
  }

}