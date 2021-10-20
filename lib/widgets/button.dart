import 'package:flutter/material.dart';
import 'package:todo/widgets/constants.dart';

class Button extends StatelessWidget {
  final String lable;
  final Function()? tab;

  const Button({Key? key, required this.lable, required this.tab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tab,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryClr
        ),
        child: Center(
          child: Text(
            lable,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
