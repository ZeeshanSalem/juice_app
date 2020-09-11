import 'package:flutter/material.dart';
import 'package:juici/core/models/detail.dart';
import 'package:juici/ui/custom_widgets/juice_tile.dart';
import 'package:juici/ui/screens/image_of_items.dart';


class JuiceDetail extends StatelessWidget {

  List<Detail> list = [
    Detail(title: "Apple juice",
      description: "if you want make healthy then try apple juice which make you strong and smart",
      price: "12.66",),

    Detail(title: "Orange juice",
      description: "if you want make healthy then try apple juice which make you strong and smart",
      price: "12.66",),

    Detail(title: "Mango juice",
      description: "if you want make healthy then try apple juice which make you strong and smart",
      price: "12.66",),

    Detail(title: "Coke",
      description: "if you want make healthy then try apple juice which make you strong and smart",
      price: "12.66",),
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 40.0,bottom: 20.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index){
                      final jlist = list[index];
                      return JuiceTile(
                        title: jlist.title,
                        description: jlist.description,
                        price: jlist.price,
                      );
                    })
            ),
          ),
          // Expanded(child: ImageColumn())
          Expanded(child: ImageColumn()),
        ],
      ),
    );
  }
}

