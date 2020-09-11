import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/core/contants/text_styles.dart';


class MyTextFeild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      autofocus: true,

      decoration: InputDecoration(
          enabled: false,
          fillColor: Colors.white,
        focusColor: appbarcolor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintText: "Search",
        hintStyle: hinttextstyle,
        suffixIcon: Icon(Icons.search,
        color: iconcolor,
        )
      ),
      onChanged: (newValue){
        print(newValue);
      },
    );
  }
}

