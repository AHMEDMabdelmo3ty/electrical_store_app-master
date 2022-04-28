import 'package:flutter/material.dart';
import 'package:store_app/models/list_cars.dart';

class cartDet extends StatelessWidget {
  final BuildContext context;
  final car carm;

  const cartDet(  { this.context, this.carm});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(carm.name),
    );
  }
}
