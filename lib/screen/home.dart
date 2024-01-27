import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_app/const/colors.dart';
import 'package:flutter_app/widgets/task_wldget.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

bool show = true;

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[900],
        floatingActionButton: Visibility(
          visible: show,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: custom1,
            child: Icon(Icons.add, size: 30),
          ),
        ),
        body: SafeArea(
            child: NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  if (notification.direction == ScrollDirection.forward) {
                    setState(() {
                      show = true;
                    });
                  }
                  if (notification.direction == ScrollDirection.reverse) {
                    setState(() {
                      show = false;
                    });
                  }
                  return true;
                },
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return TaskWidget();
                  },
                  itemCount: 10,
                ))));
  }
}
