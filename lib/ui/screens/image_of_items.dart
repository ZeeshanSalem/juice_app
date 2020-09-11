import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
class ImageColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      decoration: BoxDecoration(
          color: scaffoldbackgorudcolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
          )
      ),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index){

            return Card(
              shape: RoundedRectangleBorder(),
              color: Colors.yellow,
              child: Container(
                width: 20.0,
                height: 150.0,
              ),

            );
          }),
    );

  }
}