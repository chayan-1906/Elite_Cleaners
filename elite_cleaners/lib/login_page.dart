import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';
import 'sign_up_page.dart';
import 'style_scheme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void navigateToSignUpPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpPage(),
      ),
    );
  }

  void navigateToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 50.0),
          // image logo
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          // welcome back & please login
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // welcome back
                  Text(
                    'Welcome Back!',
                    style: GoogleFonts.getFont(
                      'Lora',
                      fontSize: 30.0,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // please login
                  Text(
                    'Please login to your account',
                    style: GoogleFonts.getFont(
                      'Merriweather',
                      fontSize: 20.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // email
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: GoogleFonts.getFont(
                        'Roboto Slab',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  // password
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.getFont(
                        'Roboto Slab',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password',
                        style: GoogleFonts.getFont(
                          'Roboto Slab',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  // login button
                  InkWell(
                    onTap: navigateToHomePage,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          gradient: gradientStyle,
                        ),
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: GoogleFonts.getFont(
                              'Noto Serif',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // OR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'OR',
                            style: GoogleFonts.getFont(
                              'Lora',
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  // google/facebook
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // google
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 0.5),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/google_logo.png'),
                            ),
                          ),
                        ),
                      ),
                      // facebook
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 0.5),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/fb_logo.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // don't have an account?, SIGN UP
          Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: GoogleFonts.getFont(
                    'Merriweather',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(width: 10.0),
                InkWell(
                  onTap: navigateToSignUpPage,
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.getFont(
                      'Roboto Slab',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
