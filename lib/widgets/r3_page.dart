import 'package:dev_x02/widgets/home_page.dart';
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
     body: Padding(
       padding: const EdgeInsets.only(top:30.0),
       child: Center(
         child: Column(
           children: [
             Text('Hi R3 ${Get.arguments['argVal']}'),
             ElevatedButton(onPressed: ()=>Get.offAll(HomePage()),
                 child:const Text('Back Home'))
           ],
         ),
       ),
     ),
   );
  }



}