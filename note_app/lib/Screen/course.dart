import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:note_app/Custom/custom_widget.dart';
import 'package:note_app/Screen/overview.dart';
import 'package:note_app/Screen/review.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          backgroundColor: Colors.white,
          title: const TextEdit(
              text: 'Course Details',
              size: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/thumlain.png'),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_circle_fill_sharp,
                      color: Colors.white.withOpacity(0.8),
                      size: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextEdit(
                        text:
                            'Ux Foundation: Introduction to User\nExperince Design',
                        size: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.amber,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            TextEdit(
                                text: '4.5',
                                size: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                            TextEdit(
                                text: '(1233)',
                                size: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            TextEdit(
                                text: '12',
                                size: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                            TextEdit(
                                text: '(Leasson)',
                                size: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TabBar(
                        isScrollable: true,
                        tabAlignment: TabAlignment.center,
                        indicatorColor: Colors.purple,
                        dragStartBehavior: DragStartBehavior.start,
                        automaticIndicatorColorAdjustment: true,
                        tabs: [
                          Tab(
                            child: TextEdit(
                                text: 'OVERVIEW',
                                size: 18,
                                color: Colors.purple,
                                fontWeight: FontWeight.w600),
                          ),
                          Tab(
                            child: TextEdit(
                                text: 'LESSON',
                                size: 18,
                                color: Colors.purple,
                                fontWeight: FontWeight.w600),
                          ),
                          Tab(
                            child: TextEdit(
                                text: 'REVIEW',
                                size: 18,
                                color: Colors.purple,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 600,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.white),
                      child: TabBarView(children: [
                        const OverView(),
                        Container(
                          color: Colors.red,
                        ),
                        const ReView(),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
