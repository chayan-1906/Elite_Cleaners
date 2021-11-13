import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pickup_time_page.dart';
import 'style_scheme.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Order(),
    );
  }
}

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  Column categoryWidget(
      {required String image, required String name, required bool isActive}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            color: isActive ? null : Colors.grey.withOpacity(0.3),
            gradient: isActive ? gradientStyle : null,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$image.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Text(name, style: headingStyle),
      ],
    );
  }

  Container clothWidget(String image, String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/$image.png'),
                    ),
                  ),
                ),
                // name, price, add note
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name
                    Text(name, style: headingStyle),
                    // price
                    Text(
                      '\$$price',
                      style: headingStyle.copyWith(color: Colors.grey),
                    ),
                    // add note
                    Text(
                      'Add note',
                      style: contentStyle.copyWith(
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
                Text('\$45', style: headingStyle),
                // - icon, quantity, + icon
                Row(
                  children: [
                    // - icon
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        gradient: gradientStyle,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '-',
                          style: headingStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    // quantity
                    Container(
                      height: 40.0,
                      width: 40.0,
                      child: Center(
                        child: Text(
                          '1',
                          style: headingStyle.copyWith(fontSize: 25.0),
                        ),
                      ),
                    ),
                    // + icon
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        gradient: gradientStyle,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '+',
                          style: headingStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // divider
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width * 0.70,
                color: Colors.grey,
              ),
            ],
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
          'Select Clothes',
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
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            // man, girl, child, oldman
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryWidget(image: 'man', name: 'Men', isActive: true),
                  categoryWidget(image: 'girl', name: 'Women', isActive: false),
                  categoryWidget(image: 'child', name: 'Kids', isActive: false),
                  categoryWidget(
                      image: 'oldman', name: 'Others', isActive: false),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    clothWidget('cloth1', 'Trouser', '15'),
                    clothWidget('cloth2', 'Jeans', '10'),
                    clothWidget('cloth3', 'Jackets', '5'),
                    clothWidget('cloth4', 'Shirt', '10'),
                    clothWidget('cloth5', 'T-Shirt', '12'),
                    clothWidget('cloth6', 'Blazer', '15'),
                    clothWidget('cloth7', 'Coats', '15'),
                    clothWidget('cloth8', 'Kurta', '15'),
                    clothWidget('cloth9', 'Sweater', '15'),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Your Basket', style: headingStyle),
                    Text('7 items added', style: contentStyle),
                  ],
                ),
                Text('\$200', style: headingStyle),
              ],
            ),
            SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PickUpTimePage(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 60.0,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    'SELECT DATE & TIME',
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
