import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ShowName extends StatelessWidget {
   ShowName({
     required this.text,
     required this.name,
     required this.symbol,
    super.key,
  });

  bool symbol ;
  String text ;
  String name ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: symbol ? 65 : 50,
                  fontWeight: symbol ? FontWeight.bold : FontWeight.normal,
                color: symbol ? context.theme.primaryColor : Colors.black87),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(
           name,
            style: TextStyle(
                fontSize: symbol ? 20 : 15,
                fontWeight: symbol ? FontWeight.bold : FontWeight.normal,
                color: symbol ? context.theme.primaryColor : Colors.black87),
          ),
        )
      ],
    );
  }
}