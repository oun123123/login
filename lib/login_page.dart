import 'package:flutter/material.dart';
import 'package:login1/forgot_password.dart';
import 'package:login1/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordshown = true;

  TextEditingController passwordcontroller = TextEditingController();

  TextEditingController usernamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Login Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    labelText: ("username"),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    suffixIcon: InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        usernamecontroller.clear();
                        setState(() {});
                      },
                    ),
                  ))),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: passwordcontroller,
              obscureText: passwordshown,
              decoration: InputDecoration(
                labelText: ("password"),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                suffixIcon: SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.remove_red_eye,
                        ),
                        onTap: () {
                          passwordshown = !passwordshown;
                          setState(() {});
                        },
                      ),
                      InkWell(
                        child: Icon(
                          Icons.close,
                        ),
                        onTap: () {
                          passwordcontroller.clear();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (passwordcontroller.text == "123" &&
                    usernamecontroller.text == "abed") {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (ctx) {
                    return Main_Page();
                  }), (route) => false);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content:
                            const Text("wrong you can go forgot password")),
                  );
                }
              },
              child: Text("login")),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return ForgotPassword();
                }));
              },
              child: Text("forgot password"))
        ],
      ),
    );
  }
}
