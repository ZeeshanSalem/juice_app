import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/core/contants/text_styles.dart';
import 'package:juici/ui/custom_widgets/rectangle_button.dart';
import 'package:juici/ui/custom_widgets/appbar_cards.dart';
import 'package:juici/ui/screens/main/main_provider.dart';
import 'package:provider/provider.dart';

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
                Expanded(
                    child:TextField(
                      autofocus: true,
                      decoration: InputDecoration(
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
                    Provider.of<MainProvider>(context, listen: false).searchByName(newValue);
                  },
                )),
                SizedBox(width: 10.0,),
                RectangularButton(icon: Icons.more_vert, backgroungcolor: menubuttoncolor, iconcolor: Colors.white,),
              ],
            ),
            SizedBox(height: 5.0,),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: MyCard(title: "Soft Drink", icon: Icons.apps,)),
                  Expanded(child: MyCard(title: "Apple", icon: Icons.apps,)),
                  Expanded(child: MyCard(title: "Banana", icon: Icons.apps,)),
                  Expanded(child: MyCard(title: "Orange", icon: Icons.apps,)),
                  Expanded(child: MyCard(title: "Mango", icon: Icons.apps,)),
                ],
              ),
            )

          ],
        )
    );
  }
}