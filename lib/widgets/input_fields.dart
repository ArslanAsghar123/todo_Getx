import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/widgets/constants.dart';

class MyInPutfields extends StatelessWidget {
  final String? title;
  final String? hintTxt;
  final TextEditingController? controller;
  final Widget? widget;

  const MyInPutfields(
      {Key? key,
      required this.title,
      this.hintTxt,
      this.controller,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: textHeading(Colors.grey),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    autofocus: false,
                    cursorColor: Get.isDarkMode
                        ? Colors.grey.shade100
                        : Colors.grey.shade600,
                    style: subTitleStyle(Get.isDarkMode
                        ? Colors.grey.shade100
                        : Colors.grey.shade400),
                    controller: controller,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
