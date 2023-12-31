import 'package:flutter/material.dart';
import 'package:sellf_learn_1/pages/LoginPage.dart';
import 'package:sellf_learn_1/utils/routes.dart';
import 'pages/HomePage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    //bringVegetables(rupees: 50);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme:ThemeData(
        primarySwatch: Colors.purple,
      ),
      darkTheme: ThemeData(
      brightness: Brightness.dark
      ),
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.HomeRoute:(context)=>HomePage(),
        MyRoutes.LoginRoute:(context)=>LoginPage()
      },
    );
  }

  //bringVegetables({bool thaila int rupees = 100}){
    //take cycle
  //}

}




