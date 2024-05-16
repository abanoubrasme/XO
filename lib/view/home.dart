import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/widget/button.dart';
import 'package:xo/controller/controller.dart';
import 'package:xo/widget/restartButton.dart';

import '../widget/newGameButton.dart';
import '../widget/score.dart';
import '../widget/showName.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple[100],
        body: GetBuilder<Controller>(
            builder: (controller) {
      return ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Score(score: controller.score1,
                style: TextStyle(fontSize: controller.score1 > controller.score2 ? 25 : 20 ,
                color: controller.score1 > controller.score2 ? Colors.deepPurple : Colors.black87,
                  fontWeight: controller.score1 > controller.score2 ? FontWeight.bold:FontWeight.normal
                ),),
              ShowName(text: 'X', symbol: !controller.symbol, name: controller.playerName1,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "vs",
                  style: TextStyle(fontSize: 25, color: Colors.black54),
                ),
              ),
              ShowName(text: 'O', symbol: controller.symbol,name: controller.playerName2,),
              Score(score: controller.score2,style: TextStyle(fontSize: controller.score1 < controller.score2 ? 25 : 20 ,
                  color: controller.score1 < controller.score2 ? Colors.deepPurple : Colors.black87,
                  fontWeight: controller.score1 < controller.score2 ? FontWeight.bold:FontWeight.normal
              ),),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 460,
            width: 500,
            child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(0.0),
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0,
                children: [
                  Button(
                    show_syambol: controller.buttons,
                    index: 0,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 1,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 2,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 3,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 4,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 5,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 6,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 7,
                  ),
                  Button(
                    show_syambol: controller.buttons,
                    index: 8,
                  ),
                ]),
          ),
          RestartButton(),
          NewGameButton()
        ],
      );
    }));
  }
}





