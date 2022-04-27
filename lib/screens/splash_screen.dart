import 'package:flutter/material.dart';
import 'package:store_app/models/cars.dart';
import 'package:store_app/screens/home_screen.dart';

import '../constants.dart';
import '../widgets/car_item.dart';
import 'car_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   const Text(
          'خدماتي لقطع الغيار',
          style: TextStyle(fontSize: 25, color: kSecondaryColor, shadows: [
            Shadow(
              offset: Offset(2, 2),
            )
          ]),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kPrimaryColor,
              Colors.white,
              kTextColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'images/car.png',
              fit: BoxFit.contain,
              width: 300,
              height: 410,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kTextColor,
                        padding: EdgeInsets.all(10),
                        textStyle: TextStyle(fontSize: 20, color: Colors.white),
                        onPrimary: kTextColor),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return HomeScreen();
                      }));
                    },
                    child: Text(
                      'قسم قطع الغيار ',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kTextColor,
                        padding: EdgeInsets.all(10),
                        textStyle: TextStyle(fontSize: 20, color: Colors.white),
                        onPrimary: kTextColor),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return CarScreen();
                      }));
                    },
                    child: Text(
                      'قسم السيارات',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
