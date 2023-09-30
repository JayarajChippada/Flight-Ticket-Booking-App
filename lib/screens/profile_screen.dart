import 'package:design1/globals/app_layout.dart';
import 'package:design1/globals/styles.dart';
import 'package:design1/widgets/dotted_line.dart';
import 'package:design1/widgets/text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MyAppLayout.getWidth(20),
        right: MyAppLayout.getHeight(20)
      ),
      child: ListView(
        children: [
          SizedBox(height: MyAppLayout.getHeight(80),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MyAppLayout.getHeight(86),
                width: MyAppLayout.getWidth(86),
                decoration: BoxDecoration(
                  color: const Color(0xFFFEF4F3),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/image1.jpg")
                  ),
                ),
              ),
              SizedBox(width: MyAppLayout.getWidth(10),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: MyStyles.headLineStyle1,),
                  Text("New-York", style: MyStyles.headLineStyle4,),
                  SizedBox(height: MyAppLayout.getHeight(10),),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MyAppLayout.getHeight(100)),
                    color: const Color(0xFFFEF4F3)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(MyAppLayout.getWidth(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799)
                          ),
                          child: const Icon(Icons.shield,size: 15,color: Colors.white,)
                        ),
                        SizedBox(width: MyAppLayout.getWidth(5),),
                        const Text("Premimum status", style: TextStyle(
                          color:Color(0xFF526799),
                          fontWeight: FontWeight.w600 
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              // ignore: avoid_print
              InkWell(onTap: () => print("Edit button is tapped"),
                child: Text("Edit", style: MyStyles.textStyle.copyWith(color: MyStyles.primary),)
              ),
            ],
          ),
          SizedBox(height: MyAppLayout.getHeight(8),),
          Divider(color: Colors.grey.shade300,),
          SizedBox(height: MyAppLayout.getHeight(8),),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MyAppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: MyStyles.primary,
                  borderRadius: BorderRadius.circular(MyAppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(MyAppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(width: 18, color: const Color(0xFF264CD2).withOpacity(0.9),)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MyAppLayout.getWidth(20),
                  vertical: MyAppLayout.getHeight(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.lightbulb, color: MyStyles.primary, size: 27,),
                    ),
                    SizedBox(width: MyAppLayout.getWidth(12),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new award", style: MyStyles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("You have 95 filaments in a year", style: MyStyles.headLineStyle2.copyWith(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w600, fontSize: 16),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: MyAppLayout.getHeight(25),),
          Text("Accumulate miles", style: MyStyles.headLineStyle2),
          SizedBox(height: MyAppLayout.getHeight(15),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: MyAppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: MyStyles.bgColor,
              borderRadius: BorderRadius.circular(MyAppLayout.getHeight(18)),
              boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1
                  )
              ]
            ),
            child: Column(
              children: [
                SizedBox(height: MyAppLayout.getHeight(15),),
                Text("192802", style: TextStyle(
                  fontSize: 45,
                  color: MyStyles.textColor,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(height: MyAppLayout.getHeight(20),),
                Row(
                  children: [
                    Text("Miles accrued", style: MyStyles.headLineStyle4.copyWith(fontSize: 16),),
                    const Spacer(),
                    Text("23 May 2021", style: MyStyles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                SizedBox(height: MyAppLayout.getHeight(4),),
                Divider(color: Colors.grey.shade100,),
                SizedBox(height: MyAppLayout.getHeight(4),),
                Row(
                  children: const [
                    MyText(heading: "23 042", subHeading: "Miles", color: false, value: CrossAxisAlignment.start),
                    Spacer(),
                    MyText(heading: "Airline CO", subHeading: "Received from", color: false, value: CrossAxisAlignment.end)
                  ],
                ),
                SizedBox(height: MyAppLayout.getHeight(12),),
                const MyDottedLine(value: 12, color: false, dotHeight: 1, dotWidth: 3),
                SizedBox(height: MyAppLayout.getHeight(12),),
                Row(
                  children: const [
                    MyText(heading: "24", subHeading: "Miles", color: false, value: CrossAxisAlignment.start),
                    Spacer(),
                    MyText(heading: "McDonal's", subHeading: "Received from", color: false, value: CrossAxisAlignment.end)
                  ],
                ),
                SizedBox(height: MyAppLayout.getHeight(12),),
                const MyDottedLine(value: 12, color: false, dotHeight: 1, dotWidth: 3),
                SizedBox(height: MyAppLayout.getHeight(12),),
                Row(
                  children: const [
                    MyText(heading: "52 340", subHeading: "Miles", color: false, value: CrossAxisAlignment.start),
                    Spacer(),
                    MyText(heading: "Exuma", subHeading: "Received from", color: false, value: CrossAxisAlignment.end)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: MyAppLayout.getHeight(25),),
          Center(
            child: InkWell(
              onTap: () => print("How to get more miles is tapped"),
              child: Text("How to get more miles", style: MyStyles.textStyle.copyWith(
                color: MyStyles.primary,
                fontWeight: FontWeight.w500
              ),),
            ),
          )
        ],
      ),
    );
  }
}
