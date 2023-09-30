import 'package:design1/globals/app_layout.dart';
import 'package:design1/widgets/headline.dart';
import 'package:design1/widgets/hotel_widget.dart';
import 'package:design1/globals/styles.dart';
import 'package:design1/widgets/ticket.dart';
import 'package:flutter/material.dart';
import '../data/ticket_card.dart';
import '../data/hotel_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: MyAppLayout.getHeight(20)),
      children: [
        Column(
          children: [
            SizedBox(
              height: MyAppLayout.getHeight(MyAppLayout.getHeight(100)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: MyStyles.headLineStyle4,
                    ),
                    SizedBox(
                      height: MyAppLayout.getHeight(5),
                    ),
                    Text(
                      "Book Tickets",
                      style: MyStyles.headLineStyle1,
                    )
                  ],
                ),
                Container(
                  height: MyAppLayout.getHeight(60),
                  width: MyAppLayout.getWidth(60),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(MyAppLayout.getHeight(10)),
                      image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/image1.jpg"))),
                )
              ],
            ),
            SizedBox(
              height: MyAppLayout.getHeight(25),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MyAppLayout.getHeight(10)),
                color: const Color(0xFFF4F6FD),
              ),
              padding: EdgeInsets.only(
                  top: MyAppLayout.getHeight(10),
                  bottom: MyAppLayout.getHeight(10),
                  left: MyAppLayout.getHeight(10)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                  ),
                  Text(
                    "search",
                    style: MyStyles.headLineStyle4,
                  )
                ],
              ),
            ),
            SizedBox(
              height: MyAppLayout.getHeight(40),
            ),
            const MyHeadline(name: "Upcoming Flights", subname: "View all"),
          ],
        ),
        SizedBox(
          height: MyAppLayout.getHeight(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: MyAppLayout.getHeight(6)),
          child: Row(
            children: ticketList
                .map((singleobject) => Ticket(
                      singleTicket: singleobject,
                      color: true,
                    ))
                .toList(),
          ),
        ),
        SizedBox(
          height: MyAppLayout.getHeight(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyHeadline(name: "Hotels", subname: "View all"),
            SizedBox(
              height: MyAppLayout.getHeight(20),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList
                    .map((singleHotel) => HotelWidget(
                          singleHotel: singleHotel,
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ],
    );
  }
}
