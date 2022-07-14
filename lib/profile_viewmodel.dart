import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ProfileViewModel extends ChangeNotifier {
  var userData = '';

  Future<void> loadDataUser(String url) async {
    userData = await _getUserData(url);
    notifyListeners();
  }

  Future<String> _getUserData(String url) async {
    final uri = Uri.parse(url);
    var response = await http.get(uri);
    return response.body;
  }
}

class User {
  final String name;
  final String gender;
  final String email;

  User(this.name, this.gender, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name']['title'] +
            '.' +
            json['name']['first'] +
            ' ' +
            json['name']['last'],
        gender = json['gender'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'gender': gender,
        'email': email,
      };
}
