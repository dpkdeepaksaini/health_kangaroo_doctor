import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health_kangaroo_doctor/screens/wallet/my_wallet_credited.dart';
import 'package:health_kangaroo_doctor/screens/wallet/my_wallet_debited.dart';

import '../utils/app_styles.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen>
    with SingleTickerProviderStateMixin {
  static final List<Widget> tabsCat = <Widget>[
    // const CameraScreen(),
    const MyWalletCredited(),
    const MyWalletDebited(),
  ];

  bool showFab = false;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    _tabController.addListener(() {
      setState(() {
        if (_tabController.index == 0) {
          showFab = true;
        } else {
          showFab = false;
        }
      });
    });
  }

  final List<Widget> tabItems = [
    // const Tab(child: Icon(Icons.camera_alt)),
    const Tab(
      child: Text(
        'CREDITED AMOUNT',
        style: TextStyle(),
      ),
    ),
    const Tab(
      child: Text(
        'DEBITED AMOUNT',
        style: TextStyle(),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Styles.lightGreyColor,
            foregroundColor: Colors.black,
            elevation: 1,
            title: const Text('My Wallet'),
          ),
          body: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  decoration: BoxDecoration(
                      color: Styles.primeryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.wallet,
                            color: Colors.white,
                            size: 30,
                          ),
                          Gap(5),
                          Text(
                            '0',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const Text(
                        'Wallet Balance',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const Gap(10),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Tap to withdraw',
                          style: TextStyle(
                              color: Styles.primeryColor, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'Request Pending',
                              style: TextStyle(
                                  color: Styles.primeryColor, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Gap(5),
                          Container(
                            width: 110,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'View Request',
                              style: TextStyle(
                                  color: Styles.primeryColor, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                    indicatorPadding: EdgeInsets.zero,
                    controller: _tabController,
                    indicatorColor: Styles.primeryColor,
                    indicatorWeight: 1,
                    labelColor: Styles.primeryColor,
                    unselectedLabelColor: Styles.greyColor,
                    tabs: [
                      tabItems[0],
                      tabItems[1],
                    ]),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                child: TabBarView(controller: _tabController, children: const [
                  Center(
                    child: MyWalletCredited(),
                  ),
                  Center(
                    child: MyWalletDebited(),
                  ),
                ]),
              ),
            ],
          ))),
    );
  }
}



// TabBarView(controller: _tabController, children: const [
//             // Center(
//             //   child: CameraScreen(),
//             // ),
//             Center(
//               child: MyWalletCredited(),
//             ),
//             Center(
//               child: MyWalletDebited(),
//             ),
//           ]),

// TabBar(
//               indicatorPadding: EdgeInsets.zero,
//               controller: _tabController,
//               indicatorColor: Styles.primeryColor,
//               indicatorWeight: 3,
//               labelColor: Styles.primeryColor,
//               unselectedLabelColor: Styles.greyColor,
//               // controller: _tabController,
//               tabs: [
//                 tabItems[0],
//                 tabItems[1],
//               ]),