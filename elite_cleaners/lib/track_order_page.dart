import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'style_scheme.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrackOrder(),
    );
  }
}

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
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
          'Track Order',
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
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Number 1001',
                style: headingStyle,
              ),
              Text(
                'Order confirmed. Ready to pick',
                style: contentStyle.copyWith(color: Colors.grey, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                height: 1.0,
                color: Colors.grey,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 13.0, top: 50.0),
                    width: 4.0,
                    height: 400.0,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      statusWidget('confirmed', 'Confirmed', true),
                      statusWidget('on_board2', 'Picked Up', false),
                      statusWidget('services_img', 'Processing', false),
                      statusWidget('shipped', 'Shipped', false),
                      statusWidget('delivery', 'Delivered', false),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                height: 1.0,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all(
                        color: Colors.orangeAccent,
                      ),
                    ),
                    child: Text(
                      'Cancel Order',
                      style: contentStyle.copyWith(color: Colors.orangeAccent),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Colors.orangeAccent,
                    ),
                    child: Text(
                      'My Orders',
                      style: contentStyle.copyWith(color: Colors.white),
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
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            backgroundColor: Colors.black38,
            title: Text(
              'Home',
              style: GoogleFonts.getFont(
                'Lora',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text(
              'Track Order',
              style: GoogleFonts.getFont(
                'Lora',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text(
              'My Orders',
              style: GoogleFonts.getFont(
                'Lora',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text(
              'Profile',
              style: GoogleFonts.getFont(
                'Lora',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container statusWidget(String image, String status, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (isActive) ? Colors.orangeAccent : Colors.white,
              border: Border.all(
                color: (isActive) ? Colors.transparent : Colors.orangeAccent,
                width: 3.0,
              ),
            ),
          ),
          SizedBox(width: 50.0),
          Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/$image.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                status,
                style: contentStyle.copyWith(
                    color: (isActive) ? Colors.orangeAccent : Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
