import 'package:flutter/material.dart';
import 'package:provider_by_livdev/app/data/services/github_api_http_client.dart';
import 'package:provider_by_livdev/app/notifer/user_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void initState() {
  //   super.initState();

  //   getData();
  // }

  // var data;
  // bool isLoding = true;
  // Future<void> getData() async {
  //   data = await ProductCategoryService().fetchGithubData();
  //   // makeLoadingFalse();
  //   if (data != null) {
  //     setState(() {
  //       isLoding = false;
  //       print(isLoding);
  //     });
  //   }
  //   // context.read<UserProvider>().fetchGithubData();
  //   // context.read<UserProvider>().updateData();
  //   // setState(() {
  //   //   isLoding = true;
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();

    // Future<void> fetchUserInfo() async {
    //   await context.read<UserProvider>().getData();
    // }

    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: context.read<UserProvider>().isLoading == true
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Container(
                  width: width * 0.8,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon/github.jpg",
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: userName,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // print(data.login);

                              context
                                  .read<UserProvider>()
                                  .updateremainingString(userName.text);
                              // context.read<UserProvider>().updateData();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Get My Profile"),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
