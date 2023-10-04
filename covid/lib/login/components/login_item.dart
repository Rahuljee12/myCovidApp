import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

Widget numberInput() {
  RxString textValues = "".obs;
  return TextFormField(
    style: const TextStyle(
      fontSize: 14,
      color: Color(0XFF545B63),
    ),
    decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0XFFA5B1C2)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0XFFA5B1C2)),
        ),
        hintText: "Enter Mobile Number",
        suffixIcon: Icon(Icons.call_outlined)),
    onChanged: (val) {
      textValues.value = val;
    },
  );
}
