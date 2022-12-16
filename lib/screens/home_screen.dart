import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health_kangaroo_doctor/screens/about_screen.dart';
import 'package:health_kangaroo_doctor/screens/consultation/pending_consultation.dart';
import 'package:health_kangaroo_doctor/screens/generate_coupon_screen.dart';
import 'package:health_kangaroo_doctor/screens/my_availability_Screen.dart';
import 'package:health_kangaroo_doctor/screens/my_chats_screen.dart';
import 'package:health_kangaroo_doctor/screens/my_wallet_screen.dart';
import 'package:health_kangaroo_doctor/screens/profile_screen.dart';
import 'package:health_kangaroo_doctor/utils/app_styles.dart';

import 'consultation/done_consultation.dart';
import 'consultation/rejected_consultation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Name of Doctor',
                      style: Styles.commonText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.orangeAccent,
                          size: 15,
                        ),
                        Text(
                          'mohali',
                          style: Styles.smallText,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PendingConsultationScreen(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Styles.lightGreyColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 49,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                      radius: 49,
                                      backgroundColor: Styles.lightGreyColor,
                                      child: Text('4',
                                          style: Styles.largeText
                                              .copyWith(color: Colors.green))),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'PENDING\nCONSULTATION',
                                textAlign: TextAlign.center,
                                style: Styles.commonText,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const DoneConsultationScreen(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Styles.lightGreyColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.orangeAccent,
                                child: CircleAvatar(
                                  radius: 49,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                      radius: 49,
                                      backgroundColor: Styles.lightGreyColor,
                                      child: Text('0',
                                          style: Styles.largeText.copyWith(
                                              color: Colors.orangeAccent))),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'DONE \n CONSULTATION',
                                textAlign: TextAlign.center,
                                style: Styles.commonText,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const RejectedConsultationScreen(),
                          ));
                    },
                    child: Container(
                      width: size.width - 40,
                      decoration: BoxDecoration(
                        color: Styles.lightGreyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.redAccent,
                                child: CircleAvatar(
                                  radius: 49,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                      radius: 49,
                                      backgroundColor: Styles.lightGreyColor,
                                      child: Text('0',
                                          style: Styles.largeText.copyWith(
                                              color: Colors.redAccent))),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'REJECTED \n CONSULTATION',
                                textAlign: TextAlign.center,
                                style: Styles.commonText,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Styles.primeryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Name of Doctor',
                    style: Styles.commonWhiteText,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: [
                  DrawerCmnWgt(
                    icon: Icons.person,
                    text: 'My Profile',
                    ontap: () {
                      return Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ProfileScreen();
                      }));
                    },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.message,
                    text: 'My Chat',
                    ontap: () {
                      return Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const MyChatScreen();
                      }));
                    },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.store,
                    text: 'My Availability',
                    ontap: () {
                      return Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const MyAvailability();
                      }));
                    },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.storefront,
                    text: 'Generate Coupon',
                    ontap: () {
                      return Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const GenerateCouponScreen();
                      }));
                    },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.wallet,
                    text: 'My Wallet',
                    ontap: () {
                      return Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const MyWalletScreen();
                      }));
                    },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.support_agent,
                    text: 'Help & Support',
                    ontap: () {
                      setState(() {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                              0.5 -
                                          150),
                                  child: AlertDialog(
                                    actionsAlignment: MainAxisAlignment.center,

                                    actionsPadding: EdgeInsets.zero,
                                    titleTextStyle: TextStyle(
                                        color: Styles.primeryColor,
                                        fontSize: 22),
                                    backgroundColor: Colors.transparent,
                                    alignment: Alignment.topCenter,

                                    actions: [
                                      SizedBox(
                                          height: 250,
                                          child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20,
                                                      horizontal: 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              alignment: Alignment.center,
                                              width: 300,
                                              height: 150,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Call with admin',
                                                    style: TextStyle(
                                                        color:
                                                            Styles.primeryColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20),
                                                  ),
                                                  const Gap(10),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 215, 236, 215),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20,
                                                        vertical: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.call,
                                                          size: 40,
                                                          color: Styles
                                                              .primeryColor,
                                                        ),
                                                        const Gap(10),
                                                        Text(
                                                          '+91 987454645',
                                                          style: TextStyle(
                                                              color: Styles
                                                                  .primeryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 18),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  const Gap(10),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 215, 236, 215),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20,
                                                        vertical: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.email,
                                                          size: 40,
                                                          color: Styles
                                                              .primeryColor,
                                                        ),
                                                        const Gap(10),
                                                        Text(
                                                          'Test123@gmail.com',
                                                          style: TextStyle(
                                                              color: Styles
                                                                  .primeryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 18),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )))
                                    ],
                                    // icon: Icon(Icons.thumb_up),
                                    // content: Text(
                                    //     'You have scored 10 points, Congratulations!!!'),
                                  ),
                                ),
                              );
                            });
                      });
                    },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.info,
                    text: 'About',
                    ontap: () {
                      return Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const AboutScreen();
                      }));
                    },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.logout,
                    text: 'Logout',
                    ontap: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerCmnWgt extends StatelessWidget {
  DrawerCmnWgt({
    Key? key,
    required this.icon,
    required this.text,
    required this.ontap,
  }) : super(key: key);
  IconData icon;
  String text;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: Styles.commonWhiteBoldText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
