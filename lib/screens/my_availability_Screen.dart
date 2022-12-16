import 'package:flutter/material.dart';
import 'package:health_kangaroo_doctor/utils/app_styles.dart';

import 'home_screen.dart';

class MyAvailability extends StatefulWidget {
  const MyAvailability({Key? key}) : super(key: key);

  @override
  State<MyAvailability> createState() => _MyAvailabilityState();
}

class _MyAvailabilityState extends State<MyAvailability> {
  bool clickMorning = false;
  bool clickAfterNoon = false;
  bool clickEvening = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
        }, icon: Icon(Icons.adaptive.arrow_back)),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text('My Availability'),
      ),
      body: Container(
        color: Colors.white,
        height: size.height * 0.9,
        width: size.width,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: size.width - 20,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Styles.primeryColor,
                      ),
                      Text(
                        '22-12-16',
                        style: TextStyle(color: Styles.primeryColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CmnButtonWgt(
                    text: 'Morning Slots',
                    ontap: () {
                      setState(() {
                        clickMorning = !clickMorning;
                      });
                    },
                    isclick: clickMorning,
                  ),
                  NonVisibleWgt(
                    clickMorning: clickMorning,
                    size: size,
                    text: 'Select Morning time between 6AM to 12AM',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CmnButtonWgt(
                      text: 'Afternoon Slots',
                      ontap: () {
                        setState(() {
                          clickAfterNoon = !clickAfterNoon;
                        });
                      },
                      isclick: clickAfterNoon),
                  NonVisibleWgt(
                    clickMorning: clickAfterNoon,
                    size: size,
                    text: 'Select Afternoon time between 12PM to 17PM',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CmnButtonWgt(
                    text: 'Evening Slots',
                    ontap: () {
                      setState(() {
                        clickEvening = !clickEvening;
                      });
                    },
                    isclick: clickEvening,
                  ),
                  NonVisibleWgt(
                    clickMorning: clickEvening,
                    size: size,
                    text: 'Select Evening time between 17PM to 23:59PM',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 45,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Styles.primeryColor,
                          borderRadius: BorderRadius.circular(22.5)),
                      child: Center(
                          child: Text(
                        'SUBMIT',
                        style: Styles.commonWhiteBoldText,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Slots',
                    style: Styles.commonBoldText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Styles.greyColor,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Styles.primeryColor,
                          ),
                          Text(
                            '16-Dec-22',
                            style: TextStyle(color: Styles.primeryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CmnGreenWgt(
                    size: size,
                    text: 'Morning Slots',
                  ),
                  CmnGreenWgt(
                    size: size,
                    text: 'Afternoon Slots',
                  ),
                  CmnGreenWgt(
                    size: size,
                    text: 'Evening Slots',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NonVisibleWgt extends StatelessWidget {
  NonVisibleWgt({
    Key? key,
    required this.clickMorning,
    required this.size,
    required this.text,
  }) : super(key: key);

  final bool clickMorning;
  final Size size;
  String text;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: clickMorning,
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: Styles.commonBoldText
                  .copyWith(fontSize: 12, color: Styles.primeryColor),
            ),
            EnterDate(
              size: size,
              text1: 'Start Date',
              text2: 'Enter Start Date',
              icon: Icons.calendar_month,
            ),
            EnterDate(
              size: size,
              text1: 'End Date',
              text2: 'Enter End Date',
              icon: Icons.calendar_month,
            ),
            EnterDate(
              size: size,
              text1: 'Start Time',
              text2: 'Enter Start Time',
              icon: Icons.watch_later_outlined,
            ),
            EnterDate(
              size: size,
              text1: 'End Time',
              text2: 'Enter End Time',
              icon: Icons.watch_later_outlined,
            ),
            EnterDate(
              size: size,
              text1: 'Slot Time',
              text2: 'Enter Slot Time',
              icon: Icons.timelapse,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class EnterDate extends StatelessWidget {
  EnterDate({
    Key? key,
    required this.size,
    required this.text1,
    required this.text2,
    required this.icon,
  }) : super(key: key);

  final Size size;
  String text1;
  String text2;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                text1,
                style: Styles.mediumText,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: size.width * 0.85,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                Icon(
                  icon,
                  color: Styles.primeryColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  text2,
                  style: Styles.greyText,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CmnGreenWgt extends StatelessWidget {
  CmnGreenWgt({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: Colors.greenAccent.shade100,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.sunny,
                color: Styles.primeryColor,
              ),
              SizedBox(
                  width: size.width * 0.65,
                  child: Text(text,
                      style:
                          Styles.commonBoldText.copyWith(color: Colors.red))),
              Icon(
                Icons.arrow_drop_down_sharp,
                color: Styles.primeryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CmnButtonWgt extends StatelessWidget {
  CmnButtonWgt({
    Key? key,
    required this.text,
    required this.ontap,
    required this.isclick,
  }) : super(key: key);
  String text;
  Function() ontap;
  bool isclick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          spreadRadius: 0,
          color: Colors.grey.shade400,
          blurRadius: 3,
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Styles.mediumText,
            ),
            InkWell(
              onTap: ontap,
              child: Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Styles.primeryColor, width: 1),
                  color: isclick ? Styles.primeryColor : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Styles.primeryColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
