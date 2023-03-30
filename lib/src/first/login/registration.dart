import 'package:flutter/material.dart';
import 'package:roadassistance/src/first/login/welcomepage.dart';

class Registration extends StatefulWidget {
  const Registration(String text, {super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold( 
      
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade200,
              prefixIcon: Icon(Icons.lock),
              labelText: "Name",
              hintText: "Enter your name",
              hintStyle: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold),
              labelStyle:
                  TextStyle(fontSize: 13, color: Colors.deepPurpleAccent),
            )),
            TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: "E-mail", //babel text
                  hintText: "Enter your email", //hint text
                  prefixIcon: Icon(Icons.mail), //prefix iocn
                  hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold), //hint text style
                  labelStyle: TextStyle(
                      fontSize: 13, color: Colors.redAccent), //label style
                )),
            TextField(
                decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: "Phone Number",
              hintText: "Enter your Phone Number",
              hintStyle: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold),
              labelStyle:
                  TextStyle(
                    fontSize: 13, color: Colors.deepPurpleAccent),
            )),
            TextField(
                controller: password,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Enter you password",
                  hintStyle:
                      TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold),
                  labelStyle:
                      TextStyle(fontSize: 13, color: Colors.deepPurpleAccent),
                )),
                 TextField(
                
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Confirm Password",
                  hintText: "Enter password to confirm",
                  hintStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  labelStyle:
                      TextStyle(fontSize: 13, color: Colors.deepPurpleAccent),
                )
                ),
               Row(children: [
                Expanded(child: ElevatedButton(onPressed: (){
                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  WelcomePage()));
                }, child: Text("Create Account")))
               ],)
          ],
        ),
        
      ),
      
    );
  }
}
