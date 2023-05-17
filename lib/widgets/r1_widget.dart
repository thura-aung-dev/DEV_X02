import 'package:flutter/material.dart';
import 'package:get/get.dart';

class R1Page extends StatelessWidget {
  const R1Page({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('R1'),
          centerTitle: true,
        ),
        body:  Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                const Text('Hi R1 Normal'),
                ElevatedButton(onPressed: ()=>Get.back(),
                    child:const Text('Back'))
              ],
            ),
          ),
        ));
  }
}
