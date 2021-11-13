import 'dart:async';

import 'package:flutter/material.dart';

import 'on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elite Cleaners',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), navigateToOnBoardingPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
          ),
        ),
        child: Center(
          child: Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            )),
          ),
        ),
      ),
    );
  }

  void navigateToOnBoardingPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoardingPage(),
      ),
    );
  }
}
