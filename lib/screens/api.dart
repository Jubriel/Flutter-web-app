import 'dart:convert';
import 'package:http/http.dart';

answer(
  String location,
  String locality,
  String type,
  int bed,
  int bath,
  int toilet,
  int park,
  String estate,
  int year,
) async {
  final url = 'https://housing-priceprediction.herokuapp.com/predict';
  final headers = {'Accept': 'application/json', 'Content-Type': 'application/json'};

  Map<String, dynamic> body = {
    'Location': location,
    'Locality': locality,
    'Type': type,
    'Bedroom': bed,
    'Bathroom': bath,
    'Toilets': toilet,
    'Parking': park,
    'Estate': estate,
    'Year': year,
  };

  // var jsonBody = json.encode(body);

  Response response =
      await post(url, headers: headers, body: json.encode(body));
  // if (response.statusCode == 200) {
  //   jsonBody = json.decode(response.body);
  // }
  return response;
}
