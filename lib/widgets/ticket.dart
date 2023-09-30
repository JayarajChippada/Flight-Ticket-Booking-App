import 'package:design1/globals/styles.dart';
import 'package:design1/widgets/dotted_line.dart';
import 'package:design1/widgets/text.dart';
import 'package:flutter/material.dart';
import '../globals/app_layout.dart';

class Ticket extends StatelessWidget {
  final Map<String, dynamic> singleTicket;
  final bool color;
  const Ticket({super.key, required this.singleTicket, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      height: MyAppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: MyAppLayout.getHeight(20)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(MyAppLayout.getHeight(16)),
              decoration: BoxDecoration(
                  color: color?  MyStyles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MyAppLayout.getHeight(20)),
                      topRight: Radius.circular(MyAppLayout.getHeight(20)))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          Text(
                            singleTicket['from']['code'],
                            style: color? MyStyles.headLineStyle3
                                .copyWith(color: Colors.white) : MyStyles.headLineStyle3,
                          ),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.all(MyAppLayout.getHeight(3)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  MyAppLayout.getHeight(20)),
                              border:
                                  Border.all(width: 2.5, color: color? Colors.white : Colors.blue.shade100),
                            ),
                          ),
                          Expanded(
                              child: SizedBox(
                            height: MyAppLayout.getHeight(25),
                            child: MyDottedLine(value: 6, color: color, dotHeight: 1, dotWidth: 3),
                          )),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 2.5, color: color? Colors.white : Colors.blue.shade100),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            singleTicket['to']['code'],
                            style: color?MyStyles.headLineStyle3
                                .copyWith(color: Colors.white) :  MyStyles.headLineStyle3,
                          ),
                        ],
                      ),
                      Transform.rotate(
                          angle: 1.5,
                          child: Center(
                            child: Icon(
                              Icons.airplanemode_on_rounded,
                              color: color? Colors.white : Colors.blue.shade100,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: MyAppLayout.getHeight(5),
                  ),
                  Row(
                    children: [
                      Text(
                        singleTicket['from']['name'],
                        style: color? MyStyles.headLineStyle3
                            .copyWith(color: Colors.white) : MyStyles.headLineStyle4,
                      ),
                      const Spacer(),
                      Text(
                        singleTicket['flying_time'],
                        style: color? MyStyles.headLineStyle3
                            .copyWith(color: Colors.white) : MyStyles.headLineStyle3,
                      ),
                      const Spacer(),
                      Text(
                        singleTicket['to']['name'],
                        style: color? MyStyles.headLineStyle3
                            .copyWith(color: Colors.white) : MyStyles.headLineStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: color? const Color(0xFFF37B67) :  Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    )),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: MyDottedLine(value: 15, color: color, dotHeight: 1, dotWidth: 5),
                  )),
                  SizedBox(
                    height: MyAppLayout.getHeight(20),
                    width: MyAppLayout.getWidth(10),
                    child: const DecoratedBox(
                        decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 10),
              decoration: BoxDecoration(
                color: color? const Color(0xFFF37B67) : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: color? const Radius.circular(10) : Radius.zero,
                    bottomRight: color? const Radius.circular(10) : Radius.zero),
              ),
              child: Row(
                children: [
                  MyText(heading: singleTicket['date'], subHeading:  "Date", color: color, value: CrossAxisAlignment.start,),
                  const Spacer(),
                  MyText(heading: singleTicket['departure_time'], subHeading:  "Departure Time", color: color, value: CrossAxisAlignment.center,),
                  const Spacer(),
                  MyText(heading: singleTicket['number'].toString(), subHeading:  "Number", color: color, value: CrossAxisAlignment.end,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
