import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider_by_livdev/app/data/models/user_details_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider_by_livdev/app/data/services/github_api_base_Url.dart';
import 'package:provider_by_livdev/app/routes/routes.dart';
import 'package:provider_by_livdev/ui/view/homeScreen.dart';
import 'package:provider_by_livdev/ui/view/user_detail_screen.dart';

class UserProvider extends ChangeNotifier {
  // ProductCategoryService _githubapidata = ProductCategoryService();

  bool isLoading = false;
  bool isLoadingDone = false;

  var _remainingString;
  //gatter
  get remainingString => _remainingString;
  //set variable
  void updateremainingString(String remainingString, BuildContext context) {
    _remainingString = remainingString;
    print(_remainingString);
    setLoading(true);
    fetchGithubData(_remainingString, context);
    // ProductCategoryService().fetchGithubData();
  }

  var githubDataUserDetail;
  // Future<UserDetailsModel>
  fetchGithubData(var userName, context) async {
    setLoading(true);
    var response = await http
        .get(Uri.parse(GithubapibaseUrl.baseUrl + "users/" + userName));
    //     await http.get(
    //   Uri.parse("https://api.github.com/users/sabihsk"),
    // );

    // var data = response.body;
    // print(data.login);
    if (response.statusCode >= 400) {
      throw ('Error');
    } else {
      githubDataUserDetail = userDetailsModelFromJson(response.body);
      Navigator.pushNamed(context, AppRoutes(UserDetainScreen.route).route);
      setLoading(false);
    }
  }

  var _data;
  //gatter
  get data => _data;
  //set variable
  void updateData() {
    print("update chal gaya.");

    // fetchGithubData();
  }

  void setLoading(bool value) {
    isLoading = value;

    if (isLoading == false) {
      // Navigator.pushNamed(context ,AppRoutes(UserDetainScreen.route).route);
      isLoadingDone = true;
      print(githubDataUserDetail.id);
      print(githubDataUserDetail.followers);
      print(githubDataUserDetail.following);
    }
    notifyListeners();
  }
}
