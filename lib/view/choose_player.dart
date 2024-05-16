import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/controller/controller.dart';
import 'package:xo/widget/inputField.dart';
import 'package:xo/view/home.dart';

// ignore: must_be_immutable
class ChoosePlayer extends StatelessWidget {
  ChoosePlayer({Key? key}) : super(key: key);

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "X",
                style: TextStyle(
                    fontSize: 100,
                    color: context.theme.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 25,
                    bottom: 30,
                    child: Container(
                      //  height: 90,
                      width: 120,
                      decoration:
                          BoxDecoration(color: context.theme.primaryColor),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "O",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 90,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          InputField(
            hintText: "Player Name 1 ",
            onChanged: (text) {
              controller.playerName1 = text;
            },
          ),
          InputField(
            hintText: "Player Name 2 ",
            onChanged: (text) {
              controller.playerName2 = text;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                onPressed: () {
                  Get.to(() => Home());
                },
                color: context.theme.primaryColor,
                height: 50,
                minWidth: 180,
                child: const Text(
                  "Play",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
