import 'package:flutter/material.dart';

import '../globals/styles.dart';

class MyText extends StatelessWidget {
  final String heading;
  final String subHeading;
  final bool color;
  final CrossAxisAlignment value;
  const MyText(
      {super.key, required this.heading, required this.subHeading, required this.color, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: value,
      children: [
        Text(
          heading,
          style: color
              ? MyStyles.headLineStyle3.copyWith(color: Colors.white) : MyStyles.headLineStyle3,
        ),
        Text(
          subHeading,
          style: color
              ? MyStyles.headLineStyle4.copyWith(color: Colors.white) : MyStyles.headLineStyle4,
        ),
      ],
    );
  }
}
