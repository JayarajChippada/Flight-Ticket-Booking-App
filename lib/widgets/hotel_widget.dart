import 'package:design1/globals/styles.dart';
import 'package:flutter/material.dart';

import '../globals/app_layout.dart';

class HotelWidget extends StatelessWidget {
  final Map<String, dynamic> singleHotel;
  const HotelWidget(
      {super.key, required this.singleHotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MyAppLayout.getHeight(5), right: MyAppLayout.getHeight(17)),
      padding:EdgeInsets.only(top: MyAppLayout.getHeight(15), 
                      left: MyAppLayout.getHeight(15), 
                      right: MyAppLayout.getHeight(15)),
      width: MediaQuery.of(context).size.width * 0.6,
      height: MyAppLayout.getHeight(350),
      decoration: BoxDecoration(
          color: MyStyles.primary,
          borderRadius: BorderRadius.circular(MyAppLayout.getHeight(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MyAppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MyAppLayout.getHeight(15)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(singleHotel['imageurl']),
              ),
            ),
          ),
          SizedBox(
            height: MyAppLayout.getHeight(10),
          ),
          Text(singleHotel['h1'],
              style:
                  MyStyles.headLineStyle2.copyWith(color: const Color(0xFFd2bdb6))),
          SizedBox(
            height: MyAppLayout.getHeight(5),
          ),
          Text(singleHotel['h2'],
              style: MyStyles.headLineStyle3.copyWith(color: Colors.white)),
          SizedBox(
            height: MyAppLayout.getHeight(8),
          ),
          Text(singleHotel['price'] + "/night",
              style:
                  MyStyles.headLineStyle1.copyWith(color: const Color(0xFFd2bdb6))),
        ],
      ),
    );
  }
}
