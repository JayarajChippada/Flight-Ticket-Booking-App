import 'package:design1/globals/app_layout.dart';
import 'package:design1/globals/styles.dart';
import 'package:design1/widgets/containers_widget.dart';
import 'package:design1/widgets/departurefield.dart';
import 'package:flutter/material.dart';

import '../widgets/headline.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(
        top: MyAppLayout.getHeight(40),
      ),
      child: ListView(
        children: [
          Text(
            "What are",
            style: MyStyles.headLineStyle1.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: MyAppLayout.getWidth(35)),
          ),
          SizedBox(
            height: MyAppLayout.getHeight(5),
          ),
          Text(
            "you looking for?",
            style: MyStyles.headLineStyle1.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: MyAppLayout.getWidth(35)),
          ),
          SizedBox(
            height: MyAppLayout.getHeight(20),
          ),
          const MyContainerWidget(name1: "Airline Tickets", name2: "Hotels"),
          SizedBox(
            height: MyAppLayout.getHeight(25),
          ),
          const MyTextField(
              iconName: Icons.flight_takeoff_rounded, name: "Departure"),
          SizedBox(
            height: MyAppLayout.getHeight(20),
          ),
          const MyTextField(
              iconName: Icons.flight_land_rounded, name: "Arrival"),
          SizedBox(
            height: MyAppLayout.getHeight(25),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0000FF),
                  padding: EdgeInsets.only(top: 15, bottom: 15)),
              onPressed: () => Text("Button is pressed"),
              child: Center(child: Text("Find Tickets"))),
          SizedBox(
            height: MyAppLayout.getHeight(40),
          ),
          const MyHeadline(name: "Upcoming Flights", subname: "View all"),
          SizedBox(
            height: MyAppLayout.getHeight(20),
          ),

          //Bottom of the screen
          SizedBox(
            height: MyAppLayout.getHeight(420),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  // height: MyAppLayout.getHeight(420),
                  padding: EdgeInsets.symmetric(
                    horizontal: MyAppLayout.getWidth(15),
                    vertical: MyAppLayout.getHeight(15),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(MyAppLayout.getHeight(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MyAppLayout.getHeight(190),
                        //width: MyAppLayout.getWidth(120),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(MyAppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/image7.jpeg")),
                        ),
                      ),
                      SizedBox(
                        height: MyAppLayout.getHeight(10),
                      ),
                      Text(
                          "20% discount\non business\nclass\ntickets from\nAirline on\nInternational",
                          style: MyStyles.headLineStyle2),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/image6.jpeg")),
                      ),
                      padding: EdgeInsets.all(MyAppLayout.getHeight(15)),
                      height: MyAppLayout.getHeight(420) * 0.50,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: MyStyles.headLineStyle3.copyWith(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                height: MyAppLayout.getHeight(10),
                              ),
                              Text(
                                "Take the survey\nabout our\nservices and\nget a discount",
                                style: MyStyles.headLineStyle4
                                    .copyWith(color: Colors.white70),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: MyAppLayout.getHeight(20)),
                      height: MediaQuery.of(context).size.height * 0.24,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade900,
                          borderRadius:
                              BorderRadius.circular(MyAppLayout.getHeight(12))),
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Column(
                        children: [
                          Center(
                              child: Text(
                            "Take Love",
                            style: MyStyles.headLineStyle2
                                .copyWith(color: Colors.white),
                          )),
                          SizedBox(
                            height: MyAppLayout.getHeight(20),
                          ),
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: "😍", style: TextStyle(fontSize: 32)),
                              TextSpan(
                                  text: "🥰", style: TextStyle(fontSize: 45)),
                              TextSpan(
                                  text: "😘", style: TextStyle(fontSize: 32))
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
