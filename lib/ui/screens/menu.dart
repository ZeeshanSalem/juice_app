import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/core/models/detail.dart';
import 'package:juici/ui/custom_widgets/custom_appbar.dart';
import 'package:juici/ui/custom_widgets/juice_detail.dart';
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbackgorudcolor,
      body: Column(
        children: [
          CustomAppBar(),
              Expanded(
                child: Row(
                children: [
                  Expanded(child: JuiceDetail()),

                ],
            ),
              )
          

        ],
      ),
    );
  }
}











