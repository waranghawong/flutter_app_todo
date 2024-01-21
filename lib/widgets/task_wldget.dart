import 'package:flutter/material.dart';

import '../const/colors.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: custom1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  //image
                  imageee(),
                  SizedBox(
                    width: 20,
                  ),
                  //title and subtitle
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'title',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[700]),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'subtitle',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[400]),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget imageee() {
    return Container(
      height: 130,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            image: AssetImage('images/img3.jpg'),
            fit: BoxFit.cover,
          )),
    );
  }
}
