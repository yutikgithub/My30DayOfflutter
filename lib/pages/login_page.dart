import 'package:dayofflutter/util/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(
                "assets/images/login.png",
              )),
           Text(
            "Welcome $name",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Name",
                  ),
                  onChanged: (value)
                  {
                    name = value;
                    setState(() {
                      
                    });
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(minimumSize: Size(150.0, 50.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: Text("Login")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
