import 'package:flutter/material.dart';
import 'package:homework1/src/components/model/user_error.dart';
import 'package:homework1/src/components/model/users_list_model.dart';
import 'package:homework1/src/components/repo/api_status.dart';
import 'package:homework1/src/components/repo/user_services.dart';

class UsersViewModel extends ChangeNotifier {
  UsersViewModel() {
    getUsers();
  }

  bool _loading = false;
  List<UserModel> _userListModel = [];
  UserError? _userError;

  bool get loading => _loading;
  List<UserModel> get userListModel => _userListModel;
  UserError? get userError => _userError;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setUserListModel(List<UserModel> userListModel) {
    _userListModel = userListModel;
  }

  setUserError(UserError userError) {
    _userError = userError;
  }

  getUsers() async {
    setLoading(true);
    var response = await UserServices.getUsers();
    if (response is Success) {
      setUserListModel(response.response as List<UserModel>);
    }
    if (response is Failure) {
      UserError userError =
          UserError(code: response.code, message: response.errorResponse);
      setUserError(userError);
    }
    setLoading(false);
  }
}
