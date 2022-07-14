import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../profile_viewmodel.dart';

const apiEndPoint = 'https://randomuser.me/api';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final viewmodel = ProfileViewModel();

  @override
  void initState() {
    viewmodel.loadDataUser(apiEndPoint);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    User user;
    Widget userInfo() {
      if (viewmodel.userData.isNotEmpty) {
        user = User.fromJson(jsonDecode(viewmodel.userData)['results'][0]);
        return Card(
          child: ListView.builder(
            itemCount: viewmodel.userData.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.gender),
                trailing: Text(user.email),
              );
            },
          ),
        );
      }
      return const CircularProgressIndicator();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(32),
            child: Center(
              child: userInfo(),
            )),
      ),
    );
  }
}
