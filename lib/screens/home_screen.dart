import 'package:flutter/material.dart';
import 'package:health_kangaroo_doctor/screens/my_availability_Screen.dart';
import 'package:health_kangaroo_doctor/utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(

      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Name of Doctor',
                    style: Styles.commonText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_outlined,color: Colors.orangeAccent,size: 15,),
                      Text('mohali',style: Styles.smallText,)
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
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
                              backgroundColor: Styles.greyColor,
                                child: Text('0',style: Styles.largeText.copyWith(color: Colors.green))),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'PENDING \n CONSULTATION',
                          textAlign: TextAlign.center,
                          style: Styles.commonText,
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Styles.greyColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
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
                                backgroundColor: Styles.greyColor,
                                child: Text('0',style: Styles.largeText.copyWith(color: Colors.orangeAccent))),
                          ),
                        ),
                        SizedBox(
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
                decoration: BoxDecoration(
                  color: Styles.greyColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width-40,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
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
                                backgroundColor: Styles.greyColor,
                                child: Text('0',style: Styles.largeText.copyWith(color: Colors.redAccent))),
                          ),
                        ),
                        SizedBox(
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
                decoration: BoxDecoration(
                  color: Styles.greyColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

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
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(
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
                    text: 'My Profile', ontap: () {  },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.message,
                    text: 'My Chat', ontap: () {  },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.store,
                    text: 'My Availability', ontap: () {
                      return Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return MyAvailability();
                      }));
                  },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.storefront,
                    text: 'Generate Coupon', ontap: () {  },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.wallet,
                    text: 'My Wallet', ontap: () {  },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.support_agent,
                    text: 'Help & Support', ontap: () {  },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.info,
                    text: 'About', ontap: () {  },
                  ),
                  DrawerCmnWgt(
                    icon: Icons.logout,
                    text: 'Logout', ontap: () {  },
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
              SizedBox(
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
