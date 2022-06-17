import 'dart:convert';

import 'package:quiz/constants/api_constants.dart';

import 'package:http/http.dart' as http;

Map data = {};

Future getData(int categoryId) async {
  ///get data
  ///
  ///

  // var url = ApiConstants().BASE_URL +
  //     "category/" +
  //     categoryId.toString() +
  //     '/data.json';

  var url =
      'https://quizapp-7789a-default-rtdb.asia-southeast1.firebasedatabase.app/' +
          'data.json';

  try {
    final response = await http.get(Uri.parse(url));
    final extractedData = json.decode(response.body);

    print(
        '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
    print(extractedData);

    for (int i = 0; i < 2; i++) {
      if (extractedData[i]["categoryId"] == categoryId) {
        data = extractedData[categoryId];
      }
    }
  } catch (e) {
    print(
        '============================================================================');
    print(e);
  }
}
