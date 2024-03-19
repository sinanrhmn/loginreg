import 'package:flutter/material.dart';
import 'package:untitled4/login.dart';
import 'package:untitled4/signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Slash Flutter provides extraordinary\n flutter tutorials.Do Subscribe!",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 300, width: 300, child: Image.asset('images/1.jpg')),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ))),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))),
          ],
        ),
      ),
    );
  }
}
