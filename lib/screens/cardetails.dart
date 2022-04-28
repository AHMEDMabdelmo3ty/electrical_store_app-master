import 'package:flutter/material.dart';

import '../models/list_cars.dart';
import '../widgets/car_item.dart';
import 'car_type.dart';

class ListOfCarScreen extends StatelessWidget {

  final car car_list;
  final int id;

  const ListOfCarScreen(  {  this.car_list, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
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
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(25),
                            ),
                            image: DecorationImage(
                                image: (car_list.image != null)
                                    ? AssetImage(
                                  car_list.image,
                                )
                                    : AssetImage("images/car.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Container(
                          padding: EdgeInsets.only(right: 10),
                          child: TextCar(
                              string: 'شركة : ${car_list.name}', color: Colors.black, fontsize: 20),
                        ),
                          Spacer(),

                        ],),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: TextCar(
                            string:'وصف الشركه : ${car_list.name}', color: Colors.grey[700], fontsize: 15),
                      ),

                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => cartDet(context: context,carm:   cartoyota[id])));
                },
              ),
            ),
          );
        })),
      )
    ;
  }
}
