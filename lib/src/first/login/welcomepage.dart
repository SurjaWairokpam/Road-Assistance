import 'package:flutter/material.dart';
import 'package:roadassistance/dashboard.dart';
import 'package:roadassistance/src/first/login/registration.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Welcome to",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Road Assistance",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Image(
            image: AssetImage(
              'assets/images/logo.jpg',
            ),
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
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
                                        builder: (context) =>
                                            const DashboardUi()));
                              },
                              child: const Text("LogIn")),
                        )),
                    const SizedBox(
                      height: 50,
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
                              fixedSize: const Size(30, 50),
                              backgroundColor: Colors.deepOrange),
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
      child: Form(
        child: Column(
          children: <Widget>[
            const Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            )
          ],
        ),
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
      child: Form(
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
      ),
    );
  }
}
