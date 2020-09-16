
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:juici/core/contants/text_styles.dart';
import 'package:juici/ui/custom_widgets/rectangle_button.dart';
import 'package:juici/ui/screens/main/main_provider.dart';
import 'package:provider/provider.dart';

class MyCard extends StatelessWidget {

  final String title;
  final IconData icon;
  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<MainProvider>(context, listen: false).searchByKeyword(title);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RectangularButton(icon: icon, backgroungcolor: Colors.white,),
          SizedBox(height: 5.0,),
          Text(title,
          textAlign: TextAlign.center,
          style: smallcardtextstyle,),
        ],
      ),
    );
  }
}
