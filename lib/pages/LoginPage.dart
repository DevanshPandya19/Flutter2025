import 'package:flutter/material.dart';
import 'package:sellf_learn_1/utils/routes.dart';
class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("Assets/images/undraw_Traveling_yhxq.png",
              fit: BoxFit.cover,
              
            ),
            SizedBox(
              height: 20,
            ),
            Text("Welcom",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.HomeRoute);
                },
                    child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                )
              ],),
            )
          ],
        ),
      )
        
    );
  }
}
