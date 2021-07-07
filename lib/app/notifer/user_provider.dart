import 'package:flutter/foundation.dart';
// import 'package:provider_by_livdev/app/data/models/user_details_model.dart';
import 'package:provider_by_livdev/app/data/services/github_api_http_client.dart';
import 'package:provider/provider.dart';

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
    ProductCategoryService().fetchGithubData();
  }

  // var data;
  Future<void> getData() async {
    setLoading(true);
    print("getData method");
    // try {
    var bekar = await ProductCategoryService().fetchGithubData();
    setLoading(false);
    print(isLoading);
    // print(data.login);
    // } catch (e) {
    //   print("pPagal bana raha hai.");
    // }
  }

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
