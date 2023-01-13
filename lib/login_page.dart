import 'package:flutter/material.dart';
import 'package:learning_login_page/components/my_button.dart';
import 'package:learning_login_page/components/my_textfield.dart';
import 'package:learning_login_page/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//sign in user method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(height: 50),

                //welcome come back
                Text(
                  "Welcome back you\'ve been missed!",
                  style: TextStyle(color: Colors.grey[700], fontSize: 20),
                ),

                const SizedBox(height: 25),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //sign in button
                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 50),

                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                //google + apple sign in button
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     //google button
                //     SquareTile(
                //       imagePath: '',
                //     ),

                //     SizedBox(
                //       width: 10,
                //     ),

                //     //facebook button
                //     SquareTile(
                //       imagePath: '',
                //     ),
                //   ],
                // ),

                const SizedBox(height: 50),

                //register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Register Now!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
