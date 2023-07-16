import 'package:flutter/material.dart';
import 'package:login1/login_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("forgot password"),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: ("username"),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    suffixIcon: InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        usernameController.clear();
                      },
                    ),
                  ))),
          IconButton(
              onPressed: () {
                if (usernameController.text == "abed") {
                  print("sucsses username/password=123");
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return LoginPage();
                  }));
                } else {
                  print("falied username");
                }
                setState(() {});
              },
              icon: Text("submit"))
        ],
      ),
    );
  }
}
