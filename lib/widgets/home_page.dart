import 'package:dev_x02/widgets/r1_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//ignore:must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  var data3 = {"Page": "R3", "message": "I sent a json data to you R3."};
  var data4 = "passed%20directly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX02App'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding:  EdgeInsets.only(top:30.0,bottom: 60.0),
              child:  Text.rich(TextSpan(
                children: [
                  TextSpan(text:'Practice for ',style: TextStyle(fontSize: 16)),
                  TextSpan(text:'GetX ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,decoration: TextDecoration.underline)),
                  TextSpan(text:'Route',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 18))
                ]
              )),
            ),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: SizedBox(
            //       width: 250,
            //       height: 50,
            //       child: TextField(
            //         decoration: InputDecoration(
            //           enabledBorder: OutlineInputBorder(
            //             borderSide:const BorderSide(
            //               width: 1,
            //               color: Colors.grey
            //             ),
            //             borderRadius: BorderRadius.circular(50.0),
            //           )
            //         ),
            //         maxLines: 1,
            //       ),
            //     ),
            //   ),
            // ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: TextButton(
                      onPressed: () => Get.to(const R1Page()),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      child: const Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'R1\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Normal Route',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black12))
                      ]))),
                ),
                const SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width:150,
                  child: TextButton(
                      onPressed: () => Get.toNamed('/r2_page',
                          parameters: {'paraVal': 'I am from parameter.'}),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      child: const Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'R2\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Param Route',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black12))
                      ]))),
                ),
              ],
            ),
            const SizedBox(
                width: 250,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  endIndent: 0,
                  color: Colors.grey,
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: TextButton(
                      onPressed: () =>
                          Get.toNamed('/r3_page', arguments: {'argVal': data3}),
                      child: const Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'R3\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Args Route',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black12))
                      ]))),
                ),
                const SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    width: 20,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: TextButton(
                      onPressed: () => Get.toNamed('/r4_page/$data4'),
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      child: const Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'R4\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Direct Route',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black12))
                      ]))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
