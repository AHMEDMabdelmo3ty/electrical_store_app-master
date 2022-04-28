import 'package:flutter/material.dart';
import 'package:store_app/models/cars.dart';
import 'package:store_app/widgets/car_item.dart';

import '../constants.dart';
import '../models/product.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(
      title:   const Text(
        'انواع السيارات ',
        style: TextStyle(fontSize: 25, color: kSecondaryColor, shadows: [
          Shadow(
            offset: Offset(2, 2),
          )
        ]),
      ),
      centerTitle: true,
    ),

        body: SingleChildScrollView(
          child: Column(
              children: [
          Container(
            height: 2500,
          child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: campany_cars.length,
          itemBuilder: (context, index) {
            return CarCard(context: context, rating: 5, carm: campany_cars[index],);
          })),
              ] ),
        )



    );
  }
}
