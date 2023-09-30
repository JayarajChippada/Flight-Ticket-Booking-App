import 'package:flutter/material.dart';

import '../globals/app_layout.dart';

class MyContainerWidget extends StatelessWidget {
  final String name1;
  final String name2;
  const MyContainerWidget(
      {super.key, required this.name1, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.43,
            padding: EdgeInsets.only(
              top: MyAppLayout.getHeight(7),
              bottom: MyAppLayout.getHeight(7),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(MyAppLayout.getHeight(50)),
                  bottomLeft: Radius.circular(MyAppLayout.getHeight(50))),
            ),
            child: const Center(
                child: Text(
              "Airline Tickets",
            )),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.43,
            padding: EdgeInsets.only(
              top: MyAppLayout.getHeight(7),
              bottom: MyAppLayout.getHeight(7),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(MyAppLayout.getHeight(50)),
                  bottomRight: Radius.circular(MyAppLayout.getHeight(50))),
            ),
            child: const Center(
                child: Text(
              "Hotels",
            )),
          ),
        ],
      ),
    );
  }
}
