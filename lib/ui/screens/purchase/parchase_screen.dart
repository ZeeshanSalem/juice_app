import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/core/contants/text_styles.dart';
import 'package:juici/core/models/juice.dart';
import 'package:juici/ui/custom_widgets/AddtoCard_button.dart';
import 'package:juici/ui/custom_widgets/rectangle_button.dart';
import 'package:juici/ui/screens/main/main_provider.dart';
import 'package:provider/provider.dart';

class PurchaseScreen extends StatelessWidget {
  final Juice juice;
  final index;

  PurchaseScreen(this.juice, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Stack(
            children: [
              Container(
                height: 310.0,
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
                      child: RectangularButton(
                        onPress: () {
                          Navigator.pop(context);
                        },
                        icon: Icons.arrow_back,
                        backgroungcolor: menubuttoncolor,
                        iconcolor: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.more_vert,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      height: 200.0,
                      child: Image.network(juice.imgUrl),
                    )),
                  ],
                ),
              ),
              Positioned(
                  top: 280.0,
                  right: 20.0,
                  child: RectangularButton(
                    icon: Icons.favorite,
                    backgroungcolor: Colors.white,
                    iconcolor: Colors.redAccent,
                    shadowcolor: Colors.grey,
                  ))
            ],
          )),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  juice.name,
                  style: h1textstyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  juice.madeBy,
                  style: h3textstyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        juice.price,
                        style: h2textstyle,
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),

                    Expanded(
                      child: Consumer<MainProvider>(
                        builder: (context, model, child) => AddCartButton(
                          onAdd: () {
                            model.incrementCounter(index);
                          },
                          onMinus: () {
                            model.decrementCounter(index);
                          },
                          count: model.juices[index].itemCount.toString(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "About Product",
                  style: h2textstyle,
                ),
                Text(
                  juice.description,
                  style: descriptiontextstyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: ButtonTheme(
                    buttonColor: addbuttoncolor,
                    height: 60.0,
                    minWidth: 400.0,
                    child: RaisedButton(
                      onPressed: () {
                        print("hello");
                      },
                      child: Text(" Add to Card", style: addtocardtextstyle),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
