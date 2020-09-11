
import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/core/contants/text_styles.dart';

class SelectedDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("Coca colla",
        style: h1textstyle,),

        SizedBox(height: 10.0,),

        Text("Made by pepsi",
        style: h3textstyle,),

        SizedBox(height: 20.0,),

        Row(
          children: [
            Expanded(
              child: Text("12.60",
              style: h2textstyle,),
            ),

            SizedBox( width: 30.0,),

            ButtonTheme(
              minWidth: 60.0,
              height: 30.0,
              child: RaisedButton(
                color: addbuttoncolor,
                onPressed: (){
                  print("");
                },
                child: Text(" - 1 + "),
              ),
            )
          ],

        ),

        SizedBox(height: 10.0,),
        Text("About Product",
        style: h2textstyle,),

        Text("This is cold drink,This is cold drink,This is cold drink,"
            "This is cold drink,This is cold drink,This is cold drink,"
            "This is cold drink,This is cold drink,This is cold drink,",
        style: descriptiontextstyle,),

        SizedBox(height: 10.0,),
        Center(
          child: ButtonTheme(
            height: 20.0,
            minWidth: 70.0,
            child: Button(title: "Add to Card",),
          ),
        )
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  final Function onPress;

  Button({this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
     return RawMaterialButton(
      child: Text(title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0
      ),),

      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 160.0, height: 45.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: iconbuttoncolor,
    );
  }
}
