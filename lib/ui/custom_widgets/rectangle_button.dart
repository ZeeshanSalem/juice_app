import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
class RectangularButton extends StatelessWidget {
  RectangularButton({@required this.icon, this.onPress, this.width, this.height});
  final IconData icon;
  final Function onPress;
  final Size width;
  final Size height;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,
      color: Colors.white,),
      elevation: 0.0,
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 45.0, height: 45.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: iconbuttoncolor,
    );
  }
}
