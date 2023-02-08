import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 90,
          height: 50,
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 50,
          height: 40,
          child: IconButton(
            icon:
                SvgPicture.asset("assets/icons/like.svg", color: kPrimaryColor),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 70,
          height: 45,
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/profile.svg",
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
