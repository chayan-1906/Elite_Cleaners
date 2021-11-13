import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';
import 'style_scheme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void navigateToLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
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
          // sign up
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: GoogleFonts.getFont(
                      'Lora',
                      fontSize: 30.0,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Name
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: GoogleFonts.getFont(
                        'Roboto Slab',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  // Phone Number
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: GoogleFonts.getFont(
                        'Roboto Slab',
                        color: Colors.grey,
                      ),
                    ),
                  ),
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
                  SizedBox(height: 30.0),
                  InkWell(
                    onTap: () {},
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
                            'REGISTER',
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
                ],
              ),
            ),
          ),
          // already have an account? LOGIN
          Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: GoogleFonts.getFont(
                    'Merriweather',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(width: 10.0),
                InkWell(
                  onTap: navigateToLoginPage,
                  child: Text(
                    'LOGIN',
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
