import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final AddStyle addStyle = AddStyle();

    print(Get.arguments);

    Widget buildAddHostBody(){
      return Container(
        height: double.infinity,
        width: double.infinity,
        padding: addStyle.padding,
        child: Center(
          child: Text("你好"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (Widget child, Animation<double> primaryAnimation, Animation<double> secondaryAnimation) {
          return FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: buildAddHostBody(),
      ),
    );
  }
}
