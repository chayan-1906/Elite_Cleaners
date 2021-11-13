import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'order_confirmation_page.dart';
import 'style_scheme.dart';

class PickUpTimePage extends StatelessWidget {
  const PickUpTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PickUpTime(),
    );
  }
}

class PickUpTime extends StatefulWidget {
  const PickUpTime({Key? key}) : super(key: key);

  @override
  _PickUpTimeState createState() => _PickUpTimeState();
}

class _PickUpTimeState extends State<PickUpTime> {
  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: isActive ? Colors.orangeAccent : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // day
          Text(
            day,
            style: contentStyle.copyWith(
                color: isActive ? Colors.white : Colors.black, fontSize: 20.0),
          ),
          // date
          Text(
            date,
            style: contentStyle.copyWith(
                color: isActive ? Colors.white : Colors.black, fontSize: 15.0),
          ),
        ],
      ),
    );
  }

  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: isActive ? Colors.orangeAccent : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: contentStyle.copyWith(
                color: isActive ? Colors.white : Colors.black),
          ),
        ],
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
          'Select Date & Time',
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
              Text('Pick Up Date', style: headingStyle),
              SizedBox(height: 10.0),
              // pick up dates
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    dateWidget('Mon', '15 Nov', true),
                    dateWidget('Tue', '16 Nov', false),
                    dateWidget('Wed', '17 Nov', false),
                    dateWidget('Thu', '18 Nov', false),
                    dateWidget('Fri', '19 Nov', false),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                height: 1.0,
                color: Colors.grey,
              ),
              SizedBox(height: 15.0),
              Text('Pick Up Time', style: headingStyle),
              SizedBox(height: 15.0),
              // pick up times
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    timeWidget('10.00 AM to 12:00 Noon', false),
                    timeWidget('12.00 Noon to 02:00 PM', true),
                    timeWidget('02.00 PM to 04:00 PM', false),
                    timeWidget('04.00 PM to 06:00 PM', false),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Text('Delivery Date', style: headingStyle),
              SizedBox(height: 10.0),
              // delivery dates
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    dateWidget('Mon', '22 Nov', true),
                    dateWidget('Tue', '23 Nov', false),
                    dateWidget('Wed', '24 Nov', false),
                    dateWidget('Thu', '25 Nov', false),
                    dateWidget('Fri', '26 Nov', false),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                height: 1.0,
                color: Colors.grey,
              ),
              SizedBox(height: 15.0),
              Text('Delivery Times', style: headingStyle),
              SizedBox(height: 15.0),
              // delivery times
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    timeWidget('10.00 AM to 12:00 Noon', false),
                    timeWidget('12.00 Noon to 02:00 PM', true),
                    timeWidget('02.00 PM to 04:00 PM', false),
                    timeWidget('04.00 PM to 06:00 PM', false),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              // Expanded(
              //   child: Container(height: 20.0),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount Payable', style: headingStyle),
                  Text('\$225', style: headingStyle),
                ],
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => OrderConfirmationPage(),
            ),
          );
        },
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(gradient: gradientStyle),
          child: Center(
            child: Text(
              'PLACE ORDER',
              style: GoogleFonts.getFont(
                'Lora',
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
