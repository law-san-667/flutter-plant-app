import 'package:flutter/material.dart';

class SecondDetailsPlantSection extends StatelessWidget {
  const SecondDetailsPlantSection({
    Key? key,
    required this.size,
    required this.description,
  }) : super(key: key);

  final Size size;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
