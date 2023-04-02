import 'dart:convert';

import 'package:playeon/auth/user_model.dart';
import 'package:http/http.dart' as http;

class ApiController {
  final int _timeoutDuration = 4;
  //! user Create
  Future<dynamic> trailUserCreate(UserModel userDetails) async {
    var url = "https://apiv1.playeon.com/api/v1/signup/trial";
    var data = {
      "user": {
        "name": userDetails.name,
        "email": userDetails.email,
        "username": userDetails.username,
        "password": userDetails.password,
        "phoneNumber": userDetails.phone,
        "country": userDetails.country,
        "plan": "planOne",
        "paymentMethod": "card",
        "planPrice": 100,
        "trasntionId": "0dda010f-4d17-a322-3xb3-178d08def5b9",
        "BdoId": 18617
      }
    };
    print(json.encode(data));
    try {
      var response = await http
          .post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      )
          .timeout(Duration(seconds: _timeoutDuration), onTimeout: () {
        throw "Request time out";
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var datas = jsonDecode(utf8.decode(response.bodyBytes));

        return datas;
      } else {
        var statusData = jsonDecode(utf8.decode(response.bodyBytes));

        return response.statusCode;
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<dynamic> userCreate(UserModel userDetails) async {
    var url = "https://apiv1.playeon.com/api/v1/signup";
    var userSignupdata = {
      "user": {
        "name": userDetails.name,
        "email": userDetails.email,
        "username": userDetails.username,
        "password": userDetails.password,
        "phoneNumber": userDetails.phone,
        "country": userDetails.country,
        // "plan": "planOne",
        // "paymentMethod": "card",
        "planPrice": 100,
        "trasntionId": "0dda010f-4d17-a322-3xb3-178d08def5b9",
        "BdoId": 18617
      }
    };
    try {
      var response = await http
          .post(Uri.parse(url),
              headers: {'Content-Type': 'application/json'},
              body: json.encode(userSignupdata))
          .timeout(Duration(seconds: _timeoutDuration), onTimeout: () {
        throw "Request time out";
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        return data;
      } else {
        var statusData = jsonDecode(utf8.decode(response.bodyBytes));
        return statusData['msg'].toString();
      }
    } catch (e) {
      return e.toString();
    }
  }
}
