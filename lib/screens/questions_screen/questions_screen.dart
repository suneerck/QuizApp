import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz/get_data.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionNumber = 1;

  bool isAnsSelected = false;
  int selectedAns = 0;

  List list = data['questions'];

  @override
  Widget build(BuildContext context) {
    Map questions = list[questionNumber - 1];

    String question = questions['question$questionNumber'];
    String option1 = questions['option1']['answer'];
    bool option1Status = questions['option1']['isCorrect'];
    String option2 = questions['option2']['answer'];
    bool option2Status = questions['option2']['isCorrect'];
    String option3 = questions['option3']['answer'];
    bool option3Status = questions['option3']['isCorrect'];
    String option4 = questions['option4']['answer'];
    bool option4Status = questions['option4']['isCorrect'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Question $questionNumber'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.w),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 30.w,
            ),
            Text(
              question,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.w,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  if (!isAnsSelected) {
                    isAnsSelected = true;
                    selectedAns = 1;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    isAnsSelected
                        ? selectedAns == 1
                            ? option1Status
                                ? Colors.green
                                : Colors.red
                            : option1Status
                                ? Colors.green
                                : Colors.amberAccent.shade100
                        : Colors.amberAccent.shade100,
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(15.w),
                  ),
                ),
                child: Text(
                  option1,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.w,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  if (!isAnsSelected) {
                    isAnsSelected = true;
                    selectedAns = 2;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    isAnsSelected
                        ? selectedAns == 2
                            ? option2Status
                                ? Colors.green
                                : Colors.red
                            : option2Status
                                ? Colors.green
                                : Colors.amberAccent.shade100
                        : Colors.amberAccent.shade100,
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(15.w),
                  ),
                ),
                child: Text(
                  option2,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.w,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  if (!isAnsSelected) {
                    isAnsSelected = true;
                    selectedAns = 3;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    isAnsSelected
                        ? selectedAns == 3
                            ? option3Status
                                ? Colors.green
                                : Colors.red
                            : option3Status
                                ? Colors.green
                                : Colors.amberAccent.shade100
                        : Colors.amberAccent.shade100,
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(15.w),
                  ),
                ),
                child: Text(
                  option3,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.w,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  if (!isAnsSelected) {
                    isAnsSelected = true;
                    selectedAns = 4;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    isAnsSelected
                        ? selectedAns == 4
                            ? option4Status
                                ? Colors.green
                                : Colors.red
                            : option4Status
                                ? Colors.green
                                : Colors.amberAccent.shade100
                        : Colors.amberAccent.shade100,
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(15.w),
                  ),
                ),
                child: Text(
                  option4,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Row(
              children: [
                // Expanded(
                //   child: Container(
                //     padding: EdgeInsets.only(right: 10.w),
                //     child: TextButton(
                //       onPressed: () {
                //         if (questionNumber >= list.length) {
                //           questionNumber = questionNumber - 1;
                //           print(
                //               '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   : question number : $questionNumber');
                //           print(list[questionNumber - 1].toString());
                //           setState(() {});
                //         }
                //       },
                //       style: ButtonStyle(
                //           backgroundColor: MaterialStateProperty.all(
                //               questionNumber < list.length
                //                   ? Colors.black45
                //                   : Colors.amberAccent.shade700),
                //           padding:
                //               MaterialStateProperty.all(EdgeInsets.all(15.w))),
                //       child: Text(
                //         'Previous',
                //         style: TextStyle(
                //           fontSize: 15.sp,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10.w),
                    child: TextButton(
                      onPressed: () {
                        if (questionNumber < list.length) {
                          questionNumber = questionNumber + 1;
                          print(
                              '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   : question number : $questionNumber');
                          print(list[questionNumber - 1].toString());
                          isAnsSelected = false;
                          selectedAns = 0;
                          setState(() {});
                        } else {
                          Get.back();
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            questionNumber >= list.length
                                ? Colors.black45
                                : Colors.green.shade700,
                          ),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15.w))),
                      child: Text(
                        questionNumber >= list.length ? 'Finish' : 'Next',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
