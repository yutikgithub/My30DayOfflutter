import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              )
            ),

          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 30.0),
            child: Column(
              children: [
                 TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Name",
                      labelText: "Name",

                   ),
                 ),

                 const SizedBox(height: 10.0,),

                 TextFormField(
                   obscureText: true,
                     decoration: const InputDecoration(
                       hintText: "Enter Password",
                       labelText: "Password",
              
                    ),
                  ),

                  SizedBox(height: 20.0,),

                  ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: (){
                      print("hi how are you");
                    }, 
                    child: Text("Login")
                  ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
