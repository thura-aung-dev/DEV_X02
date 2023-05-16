import 'package:flutter/material.dart';
import 'package:get/get.dart';

class R4Page extends StatelessWidget{
  const R4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hi!  ${Get.parameters['data']}')
      ),
    );
  }
}