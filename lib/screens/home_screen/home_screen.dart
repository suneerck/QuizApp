import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz/get_data.dart';
import 'package:quiz/screens/questions_screen/questions_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // FirebaseDatabase database = FirebaseDatabase.instance;
  //
  // void readData() {
  //   DatabaseReference ref = FirebaseDatabase.instance.ref('category/0');
  //
  //   ref.onValue.listen((DatabaseEvent event) {
  //     final data = event.snapshot.value;
  //     print(data);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizApp'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Select Category',
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.w),
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {
                        // readData();
                        getData(1);
                        Get.to(QuestionsScreen());
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.orange,
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15.w))),
                      child: Text(
                        'Category 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.w),
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {
                        getData(2);
                        Get.to(QuestionsScreen());
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.orange,
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15.w))),
                      child: Text(
                        'Category 2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.w),
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.orange,
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15.w))),
                      child: Text(
                        'Category 3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.w),
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.orange,
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15.w))),
                      child: Text(
                        'Category 4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
