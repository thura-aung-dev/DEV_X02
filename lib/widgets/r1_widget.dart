import 'package:flutter/material.dart';

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
        body: const Center(
          child: Text('Hi R1 Normal'),
        ));
  }
}
