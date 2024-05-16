import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/controller/controller.dart';

Controller controller = Get.put(Controller());

Future<dynamic> aliertDialog() {
  return Get.defaultDialog(
    title: "Winner!",
    titleStyle: const TextStyle(color: Colors.green, fontSize: 30),
    titlePadding: const EdgeInsets.symmetric(vertical: 10),
    content: Text(
      controller.winner,
      style: const TextStyle(
          fontSize: 40, fontWeight: FontWeight.bold, color: Colors.deepPurple),
    ),
    barrierDismissible: false,
    actions: [
      TextButton(
          onPressed: () {
            controller.restart();
            Get.back();
            controller.symbol = !controller.symbol;
          },
          child: const Text(
            "Ok",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ))
    ],
  );
}

Future<dynamic> alertDialog2() {
  return Get.defaultDialog(
    title: "",
    content: const Text(
      "tie!",
      style: TextStyle(
          fontSize: 45, fontWeight: FontWeight.bold, color: Colors.deepPurple),
    ),
    barrierDismissible: false,
    actions: [
      TextButton(
          onPressed: () {
            controller.restart();
            Get.back();
            controller.symbol = !controller.symbol;
          },
          child:  const Text(
            "Ok",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ))
    ],
  );
}
