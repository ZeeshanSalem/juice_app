import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juici/core/contants/text_styles.dart';
import 'package:juici/core/models/juice.dart';
import 'package:juici/ui/custom_widgets/AddtoCard_button.dart';
import 'package:juici/ui/screens/main/main_provider.dart';
import 'package:provider/provider.dart';

class JuiceTile extends StatelessWidget {

  var onPressed;
  Juice cart;
  var index;

  JuiceTile({this.cart, this.index, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(
                  "${cart.name} \n",
                  style: h2textstyle,
                ),
                subtitle: Text(
                  "${cart.description}",
                  style: descriptiontextstyle,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "${cart.price}",
                style: menupricetextstyle,
              ),
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
      ],
    );
  }
}
