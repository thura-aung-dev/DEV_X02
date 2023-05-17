import 'package:flutter/material.dart';
import 'package:get/get.dart';

class R4Page extends StatelessWidget{
  const R4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('R4'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hi!  ${Get.parameters['data']}')
      ),
    );
  }
}