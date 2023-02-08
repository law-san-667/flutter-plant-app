import 'package:flutter/material.dart';

import 'buy_button.dart';
import 'detailled_plant.dart';
import 'first-details_plant_section.dart';
import 'second_details_plant_section.dart';

class Body extends StatelessWidget {
  const Body(
      {Key? key,
      required this.image,
      required this.name,
      required this.price,
      required this.country,
      required this.stars,
      required this.description})
      : super(key: key);

  final String image;
  final String name;
  final int price;
  final String country;
  final int stars;
  final String description;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DetailledPlantImage(size: size, image: image),
          FirstDetailsPlantSection(
              size: size,
              name: name,
              country: country,
              stars: stars,
              price: price),
          SecondDetailsPlantSection(size: size, description: description),
          BuyButton(size: size),
        ],
      ),
    );
  }
}
