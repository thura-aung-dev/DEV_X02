import 'package:dev_x02/widgets/r2_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/home_page.dart';
import 'widgets/r3_page.dart';
import 'widgets/r4_page.dart';

void main(){
  runApp(const GetX02App());
}

class GetX02App extends StatelessWidget{
  const GetX02App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX02App',
      home: HomePage(),
      getPages: [
        GetPage(name: '/r2_page', page: ()=>const R2Page()),
        GetPage(name: '/r3_page', page: ()=>const R3Page()),
        GetPage(name: '/r4_page/:data', page: ()=> const R4Page())
      ],
    );
  }
}

