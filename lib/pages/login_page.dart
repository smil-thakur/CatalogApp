import 'package:catalog_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/login_image.png")),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  pressed = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                height: 50,
                width: pressed ? 50 : 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(pressed ? 50 : 10),
                  color: Colors.blue,
                ),
                child: Center(
                    child: pressed
                        ? Icon(Icons.done)
                        : Text(
                            "login",
                            style: TextStyle(fontSize: 20),
                          )),
                duration: Duration(seconds: 1),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   child: Text("login"),
            //   style: TextButton.styleFrom(
            //     primary: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
