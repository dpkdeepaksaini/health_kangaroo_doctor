import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/button_widget.dart';

class GenerateCouponScreen extends StatefulWidget {
  const GenerateCouponScreen({super.key});

  @override
  State<GenerateCouponScreen> createState() => _GenerateCouponScreenState();
}

class _GenerateCouponScreenState extends State<GenerateCouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.lightGreyColor,
        foregroundColor: Colors.black,
        elevation: 1,
        title: const Text('Generate Coupon'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.88,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/hk_logo.png',
                height: 70,
              ),
              SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    SizedBox(
                      //height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Styles.primeryColor),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 0.2,
                                  blurRadius: 20,
                                )
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Column(
                              children: [
                                TextField(
                                  obscureText: true,
                                  cursorColor: Styles.primeryColor,
                                  style: const TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      hintStyle: const TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                      hintText: 'Enter Discount number',
                                      filled: true,
                                      fillColor: Styles.lightGreyColor,
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none)),
                                ),
                                const Gap(20),
                                TextField(
                                  obscureText: true,
                                  cursorColor: Styles.primeryColor,
                                  style: const TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      hintStyle: const TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                      hintText: 'Enter Discount number',
                                      filled: true,
                                      fillColor: Styles.lightGreyColor,
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none)),
                                ),
                                const Gap(20),
                                TextField(
                                  obscureText: true,
                                  cursorColor: Styles.primeryColor,
                                  style: const TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      hintStyle: const TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                      hintText: 'Enter Discount number',
                                      filled: true,
                                      fillColor: Styles.lightGreyColor,
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none)),
                                ),
                                const Gap(20),
                                TextField(
                                  obscureText: true,
                                  cursorColor: Styles.primeryColor,
                                  style: const TextStyle(fontSize: 14),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      hintStyle: const TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                      hintText: 'Enter Discount number',
                                      filled: true,
                                      fillColor: Styles.lightGreyColor,
                                      border: const UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none)),
                                ),
                                const Gap(20),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 285,
                        left: 80,
                        child: SizedBox(
                          width: 200,
                          child: Buttonls(
                            data: 'GENERATE',
                          ),
                        )),
                  ],
                ),
              ),
              const Text(''),
              const Text(''),
            ],
          ),
        ),
      ),
    );
  }
}
