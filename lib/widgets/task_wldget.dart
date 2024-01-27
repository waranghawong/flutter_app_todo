import 'package:flutter/material.dart';

import '../const/colors.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                //image
                imageee(),
                SizedBox(
                  width: 25,
                ),
                //title and subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'title',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[700]),
                          ),
                          Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              })
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'subtitle',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[400]),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 90,
                              height: 28,
                              decoration: BoxDecoration(
                                color: custom1,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child:
                                          Image.asset('images/icon_time.png'),
                                    ),
                                    SizedBox(width: 5),
                                    const Text(
                                      'time',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 90,
                              height: 28,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 171, 168, 168),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child:
                                          Image.asset('images/icon_edit.png'),
                                    ),
                                    SizedBox(width: 5),
                                    const Text(
                                      'edit',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget imageee() {
    return Container(
      height: 130,
      width: 100,
      decoration: const BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            image: AssetImage('images/img3.jpg'),
            fit: BoxFit.cover,
          )),
    );
  }
}
