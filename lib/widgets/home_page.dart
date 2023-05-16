import 'dart:math';

import 'package:dev_x02/widgets/r1_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//ignore:must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  var  data3 = {
    "Page" : "R3",
    "message" : "I sent a json data to you R3."
  };
var data4="passed%20directly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX02App'),
      ),
      body: Column(
        children: [
          const TextField(
            maxLines: 1,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () => Get.to(const R1Page()),
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  child: const Text('R1')),
              const VerticalDivider(
                width: 20,
                thickness: 1,
                indent: 20,
                endIndent: 0,
                color: Colors.grey,
              ),
              TextButton(
                  onPressed: () => Get.toNamed('/r2_page',
                      parameters: {'paraVal': 'I am from parameter.'}),
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  child: const Text('R2')),
            ],
          ),
          const Divider(height: 1, thickness: 2, endIndent: 20),
          Row(
            children: [
              TextButton(
                  onPressed: () => Get.toNamed('/r3_page',
                      arguments: {'argVal': data3}),
                  child: const Text('R3')),
              const VerticalDivider(
                width: 20,
                thickness: 2,
                indent: 20,
                endIndent: 0,
                color: Colors.black,
              ),
              TextButton(
                  onPressed: () => Get.toNamed('/r4_page/$data4'),
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  child: const Text('R4')),
            ],
          ),
        ],
      ),
    );
  }
}
