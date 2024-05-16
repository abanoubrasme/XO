import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/controller/controller.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.show_syambol, required this.index});

  List<String> show_syambol;
  int index = 0;
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.change(index);
          controller.checkGameOver();
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple[50],
              border: Border.all(color:Colors.white, width: 4,),
              borderRadius: BorderRadius.circular(7)),
          child: Center(
              child: Text(
            show_syambol[index],
            style: const TextStyle(
                fontSize: 70, color: Colors.deepPurple, fontWeight: FontWeight.bold),
          )),
        ));
  }
}
