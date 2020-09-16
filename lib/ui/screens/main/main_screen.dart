import 'package:flutter/material.dart';
import 'package:juici/core/contants/colors.dart';
import 'package:juici/ui/custom_widgets/custom_appbar.dart';
import 'package:juici/ui/custom_widgets/juice_tile.dart';
import 'package:juici/ui/screens/main/main_provider.dart';
import 'package:juici/ui/screens/purchase/parchase_screen.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  // add filter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      //backgroundColor: scaffoldbackgorudcolor,
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Consumer<MainProvider>(
                builder: (context, juice, child) => Container(
                  //padding: EdgeInsets.only(left: 10.0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: juice.juices.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: JuiceTile(
                                      cart:  juice.juices[index],
                                      index: index,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PurchaseScreen(
                                                    juice.juices[index],
                                                    index),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 200.0,
                                    //padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        color: scaffoldbackgorudcolor,
                                        borderRadius: index == 0
                                            ? BorderRadius.only(
                                                topLeft: Radius.circular(20.0))
                                            : BorderRadius.only(
                                                topLeft: Radius.circular(0))),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PurchaseScreen(
                                                    juice.juices[index],
                                                    index),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height: 100.0,
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Center(
                                            child: Image.network(
                                                juice.juices[index].imgUrl)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
