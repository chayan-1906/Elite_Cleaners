import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500.0,
                child: PageView(
                  controller: _pageController,
                  children: [
                    /*
                    Get top \nwashing facilities
We are care about our customer first. \nAfter submitting order, we will pick up your clothes as you set the time

10% Flat discount for all kind of Wash and Iron services
Environmentally friendly washing, Care of your clothes and peruse coexistance with development
                     */
                    _onBoardPage(
                      'on_board1',
                      'Choose Clothes',
                      '',
                    ),
                    _onBoardPage(
                      'on_board2',
                      'Schedule Pickup',
                      '',
                    ),
                    _onBoardPage(
                      'on_board3',
                      'Get Best Iron Service',
                      '',
                    ),
                    _onBoardPage(
                      'on_board4',
                      'Get on Time Delivery',
                      '',
                    ),
                    _onBoardPage(
                      'on_board5',
                      'Pay Later',
                      '',
                    ),
                  ],
                  onPageChanged: (value) => setCurrentPageNo(value),
                ),
              ),
              // animated indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => getIndicator(index),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: changePage,
              child: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFFF5A85A),
                        Color(0xFFF3953b),
                        Color(0xFFE57509),
                      ],
                      // stops: [0, 1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changePage() {
    if (currentPage == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } else {
      _pageController.animateToPage(
        currentPage + 1,
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
      );
    }
  }

  Widget getIndicator(int pageNo) {
    return InkWell(
      onTap: () {
        setState(() {
          currentPage = pageNo;
        });
        _pageController.animateToPage(
          pageNo,
          duration: Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 10.0,
        width: (currentPage == pageNo) ? 20 : 10,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          color: (currentPage == pageNo) ? Colors.orangeAccent : Colors.grey,
        ),
      ),
    );
  }

  void setCurrentPageNo(int value) {
    currentPage = value;
    setState(() {});
  }

  Column _onBoardPage(String image, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(50.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/$image.png'),
              ),
            ),
          ),
        ),
        // title
        Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(
              'Charm',
              fontSize: 40.0,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w800,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
          ),
        ),
        // description
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(
              // 'Dancing Script',
              'Kaushan Script',
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
