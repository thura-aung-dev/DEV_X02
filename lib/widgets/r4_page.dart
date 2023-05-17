import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dev_x02/widgets/r2_page.dart';

class R4Page extends StatelessWidget{
  const R4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('R4'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            children: [
              Text('Hi!  ${Get.parameters['data']}'),
              ElevatedButton(onPressed: ()=>Get.off(const R2Page()),
                  child:const Text('To R2'))
            ],
          )
        ),
      ),
    );
  }
}