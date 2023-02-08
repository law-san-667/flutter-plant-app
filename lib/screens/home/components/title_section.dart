import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.press,
    required this.title,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(kDefaultPadding),
        height: 24,
        child: Row(
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: kTextColor,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 7,
                      color: kPrimaryColor.withOpacity(0.2),
                      margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                    )),
              ],
            ),
            const Spacer(),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kPrimaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    )),
                onPressed: press(),
                child: const Text(
                  "More",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ));
  }
}
