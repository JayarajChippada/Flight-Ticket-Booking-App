import 'package:flutter/material.dart';

import '../globals/styles.dart';

class MyHeadline extends StatelessWidget {
  final String name;
  final String subname;
  const MyHeadline({super.key, required this.name, required this.subname});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: MyStyles.headLineStyle2,
                  ),
                  InkWell(
                      // ignore: avoid_print
                      onTap: () => print("view all is tapped"),
                      child: Text(
                        subname,
                        style: MyStyles.textStyle
                            .copyWith(color: MyStyles.primary),
                      ))
                ],
              );
  }
}
