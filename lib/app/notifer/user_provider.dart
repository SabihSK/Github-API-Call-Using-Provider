import 'package:flutter/foundation.dart';
import 'package:provider_by_livdev/app/data/models/user_details_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider_by_livdev/app/data/services/github_api_base_Url.dart';

class UserProvider extends ChangeNotifier {
  // ProductCategoryService _githubapidata = ProductCategoryService();

  bool isLoading = false;

  var _remainingString;
  //gatter
  get remainingString => _remainingString;
  //set variable
  void updateremainingString(String remainingString) {
    _remainingString = remainingString;
    print(_remainingString);
    setLoading(true);
    fetchGithubData(_remainingString);
    // ProductCategoryService().fetchGithubData();
  }

  var githubData;
  // Future<UserDetailsModel>
  fetchGithubData(var userName) async {
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
      githubData = userDetailsModelFromJson(response.body);
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
      print(githubData.id);
      print(githubData.followers);
      print(githubData.following);
    }
    notifyListeners();
  }
}
