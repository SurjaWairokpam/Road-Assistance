import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:roadassistance/dashboard.dart';
import 'package:roadassistance/src/first/login/registration.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSBoWp5H-1OynNs8dqwt4-L-rvkq8x2x2W5qs-7zCaBeIizKu5STleVyYD3vhUqAXDi2c&usqp=CAU"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Welcome Back to",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 15),
                  ),
                  Text(
                    "Road Assistance",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 40),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 60,
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: PhoneNumberWidget(),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: PasswordWidget(),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 80),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DashboardUi()));
                                },
                                child: Text("LogIn")),
                          )),
                      const SizedBox(
                        height: 150,
                      ),
                      const Text(
                        "Does not have account ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Registration("")));
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(70, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text('SignUp'),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Text(
            "Password",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          )
        ],
      ),
    );
  }
}

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          const Text(
            "Email",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Email or Phone number",
                hintStyle: TextStyle(color: Colors.grey),
                
                border: InputBorder.none),
          )
        ],
      ),
    );
  }
}
