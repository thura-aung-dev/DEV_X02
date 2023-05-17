import 'package:dev_x02/widgets/r3_page.dart';
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
     body: Padding(
       padding: const EdgeInsets.only(top: 30),
       child: Center(
         child: Column(
           children: [
             Text('Welcome from R2 ${Get.parameters['paraVal']??'From R4 without param'}'),
             ElevatedButton(onPressed: ()=>Get.off(const R3Page(),arguments: {'argVal':'From R2 with Get.off()'}),
                 child:const Text('Back to R3'))
           ],
         ),
       ),
     ),
   );
  }

}