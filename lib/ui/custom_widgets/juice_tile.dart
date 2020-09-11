
import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/core/contants/text_styles.dart';

class JuiceTile extends StatelessWidget {
  final String title;
  final String description;
  final String price;

  JuiceTile({this.title, this.description, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          title: Text("$title \n",

            style: h2textstyle,),
          subtitle: Text(description,
            style: descriptiontextstyle,),
        ),
        SizedBox(height: 10.0,),

        Container(
          padding: EdgeInsets.only(left: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text(price,
                style: menupricetextstyle,),

              SizedBox( width: 10.0,),



              ButtonBar(
                  buttonMinWidth: 20.0,
                  buttonHeight: 20.0,
                  children: [
                    RaisedButton(
                        color: addbuttoncolor,
                        onPressed: (){print("");},
                        child: Text(" - 1 + ")),
                  ],
                ),


            ],
          ),
        )
      ],
    );
  }
}