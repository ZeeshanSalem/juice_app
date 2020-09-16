import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';


class AddCartButton extends StatelessWidget {
  final Function onAdd, onMinus;
  final count;

  AddCartButton({this.onMinus, this.onAdd, this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        width: 90.0,
        height: 35.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          //shape: BoxShape.rectangle,
          color: addbuttoncolor,
          //color: Colors.red,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment:
          children: [
            Expanded(
              child: GestureDetector(
                onTap: onMinus,
                child: AddAndMinusButton(
                  icon: Icons.remove,
                ),
              ),
            ),
//            SizedBox(
//              width: 5.0,
//            ),
            Expanded(
              child: Container(
                height: 30,
                width: 20,
                child: Center(
                  child: Text(
                    count ?? '',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
            ),
//            SizedBox(
//              width: 5.0,
//            ),
            Expanded(
              child: GestureDetector(
                onTap: onAdd,
                child: AddAndMinusButton(
                  icon: Icons.add,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddAndMinusButton extends StatelessWidget {
  final IconData icon;

  AddAndMinusButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 20,
      child: Icon(
        icon,
        size: 20.0,
      ),
    );
  }
}
