import 'package:flutter/foundation.dart';
import 'package:provider_by_livdev/app/data/models/user_details_model.dart';
import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {
  // ProductCategoryService _githubapidata = ProductCategoryService();

  bool isLoading = false;

  var _remainingString;
  //gatter
  get remainingString => _remainingString;
  //set variable
  void updateremainingString(String remainingString) {
    _remainingString = remainingString;
    print(remainingString);
    setLoading(true);
    // ProductCategoryService().fetchGithubData();
  }

  var githubData;
  // Future<UserDetailsModel>
  fetchGithubData() async {
    setLoading(true);
    var response =
        // await http.get(Uri.parse(GithubapibaseUrl.baseUrl + "users/sabihsk"));
        await http.get(
      Uri.parse("https://api.github.com/users/sabihsk"),
    );
    githubData = userDetailsModelFromJson(response.body);

    // var data = response.body;
    // print(data.login);
    if (response.statusCode >= 400) {
      throw ('Error');
    } else {
      setLoading(false);
      // return userDetailsModelFromJson(response.body);
    }
  }

  var _data;
  //gatter
  get data => _data;
  //set variable
  void updateData() {
    print("update chal gaya.");

    fetchGithubData();
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
