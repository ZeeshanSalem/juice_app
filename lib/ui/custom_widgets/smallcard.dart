
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:juici/core/contants/text_styles.dart';

class MyCard extends StatelessWidget {

  final String title;
  final IconData icon;
  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints.tightFor(
            width: 55.0,
            height: 55.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),

           child: Icon(icon),
        ),

        SizedBox(height: 5.0,),
        Text(title,
        style: smallcardtextstyle,),
      ],
    );
  }
}
