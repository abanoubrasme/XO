import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/controller/controller.dart';

// ignore: must_be_immutable
class RestartButton extends StatelessWidget {
  RestartButton({
    super.key,
  });

  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: MaterialButton(
        height: 50,
        minWidth: 180,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        color: context.theme.primaryColor,
        child: const Text(
          "Restart",
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
        onPressed: () {
          print(controller.playerName1);
          controller.restart();
        },
      ),
    );
  }
}
