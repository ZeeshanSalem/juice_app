import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/ui/screens/detail_of_selecteditem.dart';
import 'package:juici/ui/custom_widgets/rectangle_button.dart';
import 'package:juici/ui/custom_widgets/selected_item.dart';
import 'package:juici/ui/screens/menu.dart';

class ParchaseItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: SelectedContainer()),
          Expanded(child: Container(
            padding: EdgeInsets.all(20.0),
            child: SelectedDetail(),
          ))
        ],
      ),
    );
  }
}

