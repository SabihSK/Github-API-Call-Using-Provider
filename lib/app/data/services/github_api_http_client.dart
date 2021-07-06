import 'package:http/http.dart' as http;
import 'package:provider_by_livdev/app/data/models/user_details_model.dart';
import 'package:provider_by_livdev/app/data/services/github_api_base_Url.dart';

// UserDetailsModel userDetailsModelFromJson(String str) => UserDetailsModel.fromJson(json.decode(str));
class ProductCategoryService {
  // var remainingString;
  // ProductCategoryService(this.remainingString);
  Future<UserDetailsModel> fetchGithubData(remainingString) async {
    var response =
        await http.get(Uri.parse(GithubapibaseUrl.baseUrl + remainingString));

    if (response.statusCode >= 400) {
      throw ('Error');
    } else {
      return userDetailsModelFromJson(response.body);
    }
  }
}
