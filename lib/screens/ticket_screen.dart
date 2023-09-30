import 'package:design1/globals/styles.dart';
import 'package:design1/widgets/containers_widget.dart';
import 'package:design1/widgets/dotted_line.dart';
import 'package:design1/widgets/text.dart';
import 'package:design1/widgets/ticket.dart';
import 'package:flutter/material.dart';
import '../globals/app_layout.dart';
import '../data/ticket_card.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: MyAppLayout.getWidth(20), right: MyAppLayout.getWidth(20)),
          child: ListView(
            children: [
              SizedBox(
                height: MyAppLayout.getHeight(40),
              ),
              Text(
                "Tickets",
                style: MyStyles.headLineStyle1,
              ),
              SizedBox(
                height: MyAppLayout.getHeight(20),
              ),
              const MyContainerWidget(name1: "Upcoming", name2: "Previous"),
              SizedBox(
                height: MyAppLayout.getHeight(40),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: MyAppLayout.getWidth(10),
                ),
                child: Ticket(singleTicket: ticketList[0], color: false),
              ),
              Container(
                height: 410,
                margin: EdgeInsets.only(
                    right: MyAppLayout.getWidth(20),
                    left: MyAppLayout.getWidth(10)),
                padding: EdgeInsets.only(
                  left: MyAppLayout.getWidth(16),
                  right: MyAppLayout.getWidth(16),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(MyAppLayout.getHeight(15)),
                      bottomRight: Radius.circular(MyAppLayout.getHeight(15)),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: MyAppLayout.getHeight(25),
                          bottom: MyAppLayout.getHeight(25)),
                      child: Row(
                        children: const [
                          MyText(
                              heading: "Flutter Dash",
                              subHeading: "Passenger",
                              color: false,
                              value: CrossAxisAlignment.start),
                          Spacer(),
                          MyText(
                              heading: "5221 645822",
                              subHeading: "Passport",
                              color: false,
                              value: CrossAxisAlignment.end),
                        ],
                      ),
                    ),
                    const MyDottedLine(
                      value: 15,
                      color: false,
                      dotHeight: 1,
                      dotWidth: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MyAppLayout.getHeight(25),
                          bottom: MyAppLayout.getHeight(25)),
                      child: Row(
                        children: const [
                          MyText(
                              heading: "0055 444 77143",
                              subHeading: "Number of E-ticket",
                              color: false,
                              value: CrossAxisAlignment.start),
                          Spacer(),
                          MyText(
                              heading: "B2SG28",
                              subHeading: "Booking code",
                              color: false,
                              value: CrossAxisAlignment.end),
                        ],
                      ),
                    ),
                    const MyDottedLine(
                      value: 15,
                      color: false,
                      dotHeight: 1,
                      dotWidth: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MyAppLayout.getHeight(25),
                          bottom: MyAppLayout.getHeight(25)),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      height: MyAppLayout.getHeight(50),
                                      width: MyAppLayout.getWidth(50),
                                      child: const DecoratedBox(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    "assets/images/image8.png"))),
                                      )),
                                  Text(
                                    "*** 2462",
                                    style: MyStyles.headLineStyle3,
                                  ),
                                ],
                              ),
                              Text(
                                "Payment method",
                                style: MyStyles.headLineStyle4,
                              ),
                            ],
                          ),
                          Spacer(),
                          MyText(
                              heading: "\$249.99",
                              subHeading: "Price",
                              color: false,
                              value: CrossAxisAlignment.end),
                        ],
                      ),
                    ),
                    Container(
                      height: 0.4,
                      color: Colors.blueGrey.shade100,
                    ),
                    SizedBox(
                      height: MyAppLayout.getHeight(18),
                    ),
                    Container(
                      padding: EdgeInsets.all(MyAppLayout.getHeight(5)),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(MyAppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'Hello Welcome to Travelling App Design',
                          drawText: false,
                          color: MyStyles.textColor,
                          width: double.infinity,
                          height: 60,
                          errorBuilder: (context, error) =>
                              Center(child: Text(error)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MyAppLayout.getHeight(20),
              ),
              Container(
                  padding: EdgeInsets.only(
                    left: MyAppLayout.getWidth(10),
                  ),
                  child: Ticket(
                    singleTicket: ticketList[0],
                    color: true,
                  )),
            ],
          ),
        ),
        Positioned(
          left: MyAppLayout.getWidth(24),
          top: MyAppLayout.getHeight(305),
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: MyStyles.textColor)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: MyStyles.textColor,
            ),
          ),
        ),
        Positioned(
          right: MyAppLayout.getWidth(30),
          top: MyAppLayout.getHeight(305),
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: MyStyles.textColor)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: MyStyles.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
