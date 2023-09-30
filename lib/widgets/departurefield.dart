import 'package:flutter/material.dart';

import '../globals/app_layout.dart';
import '../globals/styles.dart';

class MyTextField extends StatelessWidget {
  final IconData iconName;
  final String name;
  const MyTextField({super.key, required this.iconName, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(iconName,color: const Color(0xFFBFC2DF),),
                SizedBox(
                  width: MyAppLayout.getWidth(10),
                ),
                Text(name, style: MyStyles.textStyle.copyWith(fontWeight: FontWeight.w400),)
              ],
            ),
          );
  }
}