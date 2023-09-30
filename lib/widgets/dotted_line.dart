import 'package:flutter/material.dart';

class MyDottedLine extends StatelessWidget {
  final int value;
  final bool color;
  final double dotHeight;
  final double dotWidth;
  const MyDottedLine({super.key, required this.value, required this.color, required this.dotHeight, required this.dotWidth});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / value).floor(),
              (index) => SizedBox(
                    height: dotHeight,
                    width: dotWidth,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: color
                                ? Colors.white
                                : Colors.blueGrey.shade200)),
                  )),
        );
      },
    );
  }
}
