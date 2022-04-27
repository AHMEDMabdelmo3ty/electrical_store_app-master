import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/cars.dart';

class CarCard extends StatelessWidget {
  final BuildContext context;
  final carsmodael carm;
  final int rating;

  const CarCard({ this.context, this.carm, this.rating});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Card(
        elevation: 10,
        borderOnForeground: true,
        shadowColor: Colors.indigo,
        color: Colors.grey[100],
        child: InkWell(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(25),
          ),
          child: Container(
            padding: EdgeInsets.all(5),
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: mq.width * 0.9,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(25),
                      ),
                      image: DecorationImage(
                          image: (carm.image != null)
                              ? AssetImage(
                            carm.image,
                          )
                              : AssetImage("images/car.png"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 5,
                ),

                Row(children: [Container(
                  padding: EdgeInsets.only(right: 10),
                  child: TextCar(
                      string: carm.name, color: Colors.black, fontsize: 20),
                ),

                  Spacer(),
                  SizedBox(width: 50,),
                ],),
                SizedBox(
                  height: 2,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child:                  Row(
                    children: <Widget>[
                      getStar(rating, 1),
                      getStar(rating, 2),
                      getStar(rating, 3),
                      getStar(rating, 4),
                      getStar(rating, 5)
                    ],
                  ),)
              ],
            ),
          ),
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => cartDet(context, carm, 5)));
          },
        ),
      ),
    );
  }
  Widget getStar(rating, index) {
    if (rating >= index) {
      return Icon(Icons.star, color: Color(0xffFF9A0D));
    } else {
      return Icon(Icons.star, color: Colors.grey.withOpacity(0.5));
    }

  }
}
class TextCar extends StatelessWidget{
  final String string ;
  final Color color ;
  final double fontsize ;

  const TextCar({ this.string, this.color, this.fontsize}) ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Text(string,
      style: new TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: fontsize
      ),);
  }
}