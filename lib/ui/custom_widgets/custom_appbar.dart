import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/ui/custom_widgets/search_bar.dart';
import 'package:juici/ui/custom_widgets/rectangle_button.dart';
import 'package:juici/ui/custom_widgets/smallcard.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height/3.5,

        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: appbarcolor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: MyTextFeild()),
                SizedBox(width: 10.0,),
                RectangularButton(icon: Icons.more_vert,)
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Expanded(child: MyCard(title: "Apple", icon: Icons.apps,)),
                Expanded(child: MyCard(title: "Apple", icon: Icons.apps,)),
                Expanded(child: MyCard(title: "Apple", icon: Icons.apps,)),
                Expanded(child: MyCard(title: "Apple", icon: Icons.apps,)),
                Expanded(child: MyCard(title: "Apple", icon: Icons.apps,)),
              ],
            )

          ],
        )
    );
  }
}