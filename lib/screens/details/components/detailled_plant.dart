import 'package:flutter/material.dart';

import '../../../constants.dart';

class DetailledPlantImage extends StatelessWidget {
  const DetailledPlantImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
