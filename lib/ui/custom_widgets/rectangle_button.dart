import 'package:flutter/material.dart';


class RectangularButton extends StatelessWidget {
  RectangularButton({@required this.icon, this.onPress, this.backgroungcolor,
    this.iconcolor, this.shadowcolor});
  final IconData icon;
  final Function onPress;
  final Color backgroungcolor;
  final Color iconcolor;
  final Color shadowcolor;



  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: (shadowcolor  == null) ? Colors.white : shadowcolor,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
        color: backgroungcolor,
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: IconButton(
        onPressed: onPress,
        icon: Icon(icon,
        color: iconcolor,

        size: 20.0,),
      ),
    );
  }
}
