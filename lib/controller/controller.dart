import 'package:get/get.dart';
import 'package:xo/widget/aliertDialog.dart';

class Controller extends GetxController {
  String playerName1 = '';
  String playerName2 = "";
  int score1 = 0;
  int score2 = 0;
  bool symbol = false;
  String winner = "";

  List<String> buttons = ["", "", "", "", "", "", "", "", ""];

  change(int index) {
    if (symbol) {
      if (buttons[index] == "") {
        buttons[index] = "O";
        revers();
      }
    } else {
      if (buttons[index] == "") {
        buttons[index] = "X";
        revers();
      }
    }
    update();
  }

  revers() {
    symbol = !symbol;
    update();
  }

  checkGameOver() {
    if ((buttons[0] == buttons[1] &&
            buttons[1] == buttons[2] &&
            buttons[0] != "") ||
        (buttons[3] == buttons[4] &&
            buttons[4] == buttons[5] &&
            buttons[3] != "") ||
        (buttons[6] == buttons[7] &&
            buttons[7] == buttons[8] &&
            buttons[6] != "") ||
        (buttons[0] == buttons[3] &&
            buttons[3] == buttons[6] &&
            buttons[0] != "") ||
        (buttons[1] == buttons[4] &&
            buttons[4] == buttons[7] &&
            buttons[1] != "") ||
        (buttons[2] == buttons[5] &&
            buttons[5] == buttons[8] &&
            buttons[2] != "") ||
        (buttons[0] == buttons[4] &&
            buttons[4] == buttons[8] &&
            buttons[0] != "") ||
        (buttons[2] == buttons[4] &&
            buttons[4] == buttons[6] &&
            buttons[2] != "")) {
      symbol = !symbol;
      winner = !symbol ? playerName1 : playerName2;
      !symbol ? score1++ : score2++;

      return aliertDialog();
    } else if (!buttons.contains("")) {
      symbol = !symbol;
      winner = "";
      return alertDialog2();
    }
  }

  restart() {
    buttons = ["", "", "", "", "", "", "", "", ""];
    update();
  }
  newGame(){
    score1 = 0;
    score2 = 0;
    update();
  }


}
