import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'style_scheme.dart';
import 'track_order_page.dart';

class OrderConfirmationPage extends StatelessWidget {
  const OrderConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderConfirmation(),
    );
  }
}

class OrderConfirmation extends StatefulWidget {
  const OrderConfirmation({Key? key}) : super(key: key);

  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  Container divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      height: 1.0,
      color: Colors.grey,
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
          'Order Confirmation',
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
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // image
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/on_board2.png'),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Text('Thank you for choosing us!', style: headingStyle),
            Text(
              'Your order has been placed and we will pick up your clothes on time!',
              textAlign: TextAlign.center,
              style: contentStyle,
            ),
            SizedBox(height: 10.0),
            // order id
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order ID', style: headingStyle),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    '1001',
                    style: headingStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            divider(),
            // clothes count
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Clothes Count', style: headingStyle),
                Text('7', style: headingStyle),
              ],
            ),
            divider(),
            // Total Amount
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount', style: headingStyle),
                Text('225', style: headingStyle),
              ],
            ),
            divider(),
            // pick up date & time
            Row(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pick Up Date & Time', style: headingStyle),
                    AutoSizeText(
                      'Tuesday, 16th Nov, 2021 \nBetween 10:00 AM to 12:00 Noon',
                      textAlign: TextAlign.justify,
                      style: contentStyle.copyWith(
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            divider(),
            // payment method
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment Method', style: headingStyle),
                Text('Cash', style: headingStyle),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TrackOrderPage(),
                  ),
                );
              },
              child: Container(
                height: 60.0,
                decoration: BoxDecoration(gradient: gradientStyle),
                child: Center(
                  child: Text(
                    'TRACK ORDER',
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
          ],
        ),
      ),
    );
  }
}
