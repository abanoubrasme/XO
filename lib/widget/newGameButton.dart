import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class NewGameButton extends StatelessWidget {
   NewGameButton({
    super.key,
  });
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
      child: MaterialButton(
          height: 50,
          minWidth: 180,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          color: context.theme.primaryColor,
          child: const Text("New Game",
            style: TextStyle(color: Colors.white , fontSize: 25),),
          onPressed: (){
            controller.newGame();
          }),
    );
  }
}
