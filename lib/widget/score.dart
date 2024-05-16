import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class Score extends StatelessWidget {
   Score({
    required this.score,
     required this.style,
    super.key,
  });

  int score ;
   TextStyle? style;
   Controller controller = Get.put(Controller());

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
       score.toString(),
        style: style
      ),
    );
  }
}