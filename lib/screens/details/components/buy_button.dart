import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}