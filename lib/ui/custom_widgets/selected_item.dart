import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/ui/custom_widgets/rectangle_button.dart';

class SelectedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: appbarcolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [

          Container(
              padding: EdgeInsets.all(15.0),
              child: RectangularButton(icon: Icons.arrow_back)
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Icon(Icons.more_vert,
                size: 40.0,
                color: Colors.white,),
            ),
          ),

          Center(
              child: Container(
                height: 200.0,
                child: Image(
                  image: AssetImage("assets/images/12.png"),
                ),
              )
          ),

          Align(
              alignment: Alignment.bottomRight,

              child: Padding(
                padding:  EdgeInsets.only(top: 30.0, right: 20.0),
                child: RectangularButton(icon: Icons.favorite,
                ),
              )
          )

        ],
      ),
    );
  }
}

