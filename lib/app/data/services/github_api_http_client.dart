import 'package:http/http.dart' as http;
import 'package:provider_by_livdev/app/data/models/user_details_model.dart';
import 'package:provider_by_livdev/app/data/services/github_api_base_Url.dart';

// UserDetailsModel userDetailsModelFromJson(String str) => UserDetailsModel.fromJson(json.decode(str));
class ProductCategoryService {
  // var remainingString;
  // ProductCategoryService(this.remainingString);
  Future<UserDetailsModel> fetchGithubData() async {
    var response =
        await http.get(Uri.parse(GithubapibaseUrl.baseUrl + "users/sabihsk"));
    print("ProductCategoryService ki services.");
    // var data = response.body;
    // print(data.login);
    if (response.statusCode >= 400) {
      print("ProductCategoryService ki services ka 400 ka error.");
      throw ('Error');
    } else {
      print("ProductCategoryService ki services ka return response.");
      return userDetailsModelFromJson(response.body);
    }
  }
}
