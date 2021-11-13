import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'order_page.dart';
import 'style_scheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void navigateToOrderPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => OrderPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Elite Cleaners',
          style: GoogleFonts.getFont(
            'Raleway',
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF1FFFF),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      top: 0.0,
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('BLESS THIS MESS', style: headingStyle),
                            SizedBox(height: 5.0),
                            Text(
                              'We pick your clothes and give \nthem a new look',
                              style: GoogleFonts.getFont(
                                'Lora',
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 180.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/banner_img.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Text('SERVICES', style: headingStyle),
              Container(
                height: 200.0,
                color: Color(0xFFF1FFFF),
                child: Row(
                  children: [
                    Container(
                      height: 200.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/services_img.png'),
                        ),
                      ),
                    ),
                    // IRON ONLY
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('IRON ONLY', style: headingStyle),
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: navigateToOrderPage,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: gradientStyle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                child: Text(
                                  'Place Order',
                                  style: GoogleFonts.getFont(
                                    'Lora',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF1FFFF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('AVAILABILITY', style: contentStyle),
                        Text(
                          'AVAILABLE',
                          style: contentStyle.copyWith(
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'We are open from 7:00 AM to 8:00 PM',
                      style: GoogleFonts.getFont(
                        'Lora',
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF1FFFF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CHECK THE ESTIMATION', style: contentStyle),
                    SizedBox(height: 10.0),
                    Text(
                      'You can check time estimation with price',
                      style: GoogleFonts.getFont(
                        'Lora',
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      gradient: gradientStyle,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '+',
                      style: GoogleFonts.getFont(
                        'Lora',
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.orangeAccent,
        iconSize: 30.0,
        onTap: (value) => {},
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            title: Text(
              'Home',
              style: contentStyle,
            ),
          ),
          // track order
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_outlined),
            activeIcon: Icon(Icons.track_changes_rounded),
            title: Text(
              'Track Order',
              style: contentStyle,
            ),
          ),
          // orders
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping_outlined),
            activeIcon: Icon(Icons.local_shipping_rounded),
            title: Text(
              'My Orders',
              style: contentStyle,
            ),
          ),
          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            activeIcon: Icon(Icons.account_box_rounded),
            title: Text(
              'Profile',
              style: contentStyle,
            ),
          ),
        ],
      ),
    );
  }
}
