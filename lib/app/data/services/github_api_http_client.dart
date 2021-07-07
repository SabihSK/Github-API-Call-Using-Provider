import 'package:http/http.dart' as http;
import 'package:provider_by_livdev/app/data/models/user_details_model.dart';
import 'package:provider_by_livdev/app/data/services/github_api_base_Url.dart';

import 'package:provider/provider.dart';
import 'package:provider_by_livdev/app/notifer/user_provider.dart';

// UserDetailsModel userDetailsModelFromJson(String str) => UserDetailsModel.fromJson(json.decode(str));
class ProductCategoryService {
  // var remainingString;
  // ProductCategoryService(this.remainingString);

  var data;

  Future<UserDetailsModel> fetchGithubData() async {
    var response =
        // await http.get(Uri.parse(GithubapibaseUrl.baseUrl + "users/sabihsk"));
        await http.get(
      Uri.parse(
        "https://api.github.com/users/sabihsk",
      ),
    );
    data = userDetailsModelFromJson(response.body);

    // var data = response.body;
    // print(data.login);
    if (response.statusCode >= 400) {
      throw ('Error');
    } else {
      return userDetailsModelFromJson(response.body);
    }
  }
}
