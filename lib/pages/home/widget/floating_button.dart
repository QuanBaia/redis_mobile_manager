import 'package:flutter/material.dart';


class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});


  Widget _buildFloatingButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildFloatingButton();
  }

}



