import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputField extends StatelessWidget {
  InputField({super.key, required this.hintText, required this.onChanged});

  String hintText;
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26)),
            hintText: hintText,
            prefixIcon: const Icon(
              Icons.person_outline_rounded,
              color: Colors.black45,
            )),
      ),
    );
  }
}
