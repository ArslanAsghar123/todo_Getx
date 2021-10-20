import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo/ui/add_task.dart';
import 'package:todo/widgets/constants.dart';
import 'package:todo/services/getx.dart';
import 'package:todo/widgets/button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var isDark = false;

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GetBuilder<ThemeController>(
          builder: (controller) => IconButton(
            icon: Icon(
              controller.isDarkMode
                  ? Icons.wb_sunny_outlined
                  : Icons.nightlight_round,
              color: controller.isDarkMode ? Colors.white : Colors.black,
            ),
            onPressed: () => controller.toggleDarkMode(),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
          )
        ],
      ),
      body: GetBuilder<ThemeController>(
        builder: (ctrl) => Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GetBuilder<ThemeController>(
                    builder: (ctrl) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat.yMMMd().format(
                            DateTime.now(),
                          ),
                          style: subHeading(ctrl.isDarkMode
                              ? Colors.grey.shade300
                              : Colors.grey.shade500),
                        ),
                        Text(
                          'Today',
                          style: heading(ctrl.isDarkMode
                              ? Colors.white
                              : Colors.grey.shade700),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          AddTask();
                          print('hyyy');
                        },
                        child: Button(
                          lable: '+ add task',
                          tab: () => Get.to(AddTask()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
