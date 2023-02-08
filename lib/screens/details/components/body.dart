import 'package:flutter/material.dart';

import '../../../constants.dart';

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
      child: Column(children: <Widget>[
        Container(
          width: size.width * 0.9,
          height: size.height * 0.5,
          margin: EdgeInsets.all(size.width * 0.05),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 50,
              color: kPrimaryColor.withOpacity(0.23),
            )
          ]),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: size.width * 0.06,
              left: size.width * 0.06,
              right: size.width * 0.06,
              bottom: size.width * 0.02),
          child: Row(
            children: <Widget>[
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
        ),
        Container(
          margin: EdgeInsets.only(left: size.width * 0.06),
          child: Row(children: <Widget>[
            for (int i = 0; i < stars; i++) showStar(),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(
              left: size.width * 0.06,
              right: size.width * 0.06,
              top: size.width * 0.02,
              bottom: size.width * 0.06),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size.width * 0.04,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            //display alert dialog
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Haha Sorry :)"),
                    content: const Text("This is just a UI design."),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Close"),
                      )
                    ],
                  );
                });
          },
          child: Container(
            margin: EdgeInsets.only(
                left: size.width * 0.06,
                right: size.width * 0.06,
                bottom: size.width * 0.2),
            width: size.width * 0.8,
            height: size.height * 0.08,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Icon showStar() {
    return const Icon(
      Icons.star,
      color: Colors.yellow,
    );
  }
}
