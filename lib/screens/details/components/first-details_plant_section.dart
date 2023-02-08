import 'package:flutter/material.dart';

import '../../../constants.dart';

class FirstDetailsPlantSection extends StatelessWidget {
  const FirstDetailsPlantSection({
    Key? key,
    required this.size,
    required this.name,
    required this.country,
    required this.stars,
    required this.price,
  }) : super(key: key);

  final Size size;
  final String name;
  final String country;
  final int stars;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: size.width * 0.06,
          left: size.width * 0.06,
          right: size.width * 0.06,
          bottom: size.width * 0.02),
      child: Row(
        children: <Widget>[
          Column(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "$name\n".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.05,
                      color: Colors.black),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.05,
                    color: kPrimaryColor.withOpacity(0.7),
                  ),
                ),
              ])),
              Container(
                margin: EdgeInsets.only(top: size.width * 0.01),
                child: Row(children: <Widget>[
                  for (int i = 0; i < stars; i++)
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                ]),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.05,
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
