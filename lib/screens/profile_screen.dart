import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health_kangaroo_doctor/utils/app_styles.dart';
import 'package:health_kangaroo_doctor/widgets/saved_textfield_widget.dart';

import '../widgets/button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _changePassword() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) {
            return SingleChildScrollView(
              child: AlertDialog(
                actionsPadding: EdgeInsets.zero,
                titleTextStyle:
                    TextStyle(color: Styles.primeryColor, fontSize: 22),
                backgroundColor: Colors.transparent,
                alignment: Alignment.topCenter,
                insetPadding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 100,
                ),
                actions: [
                  SizedBox(
                    height: 340,
                    child: Stack(
                      children: [
                        SizedBox(
                          //height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 15, right: 15, bottom: 10),
                                decoration: BoxDecoration(
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
                                          contentPadding: EdgeInsets.zero,
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black38),
                                          hintText: 'Enter Old Password',
                                          suffixIcon: const Icon(
                                            Icons.remove_red_eye,
                                            color: Colors.black,
                                          ),
                                          prefixIcon: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Icon(
                                              Icons.key,
                                              color: Styles.primeryColor,
                                              size: 30,
                                            ),
                                          ),
                                          border: const UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          )),
                                    ),
                                    const Gap(20),
                                    TextField(
                                      obscureText: true,
                                      cursorColor: Styles.primeryColor,
                                      style: const TextStyle(fontSize: 14),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black38),
                                          hintText: 'Enter New Password',
                                          suffixIcon: const Icon(
                                            Icons.remove_red_eye,
                                            color: Colors.black,
                                          ),
                                          prefixIcon: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Icon(
                                              Icons.key,
                                              color: Styles.primeryColor,
                                              size: 30,
                                            ),
                                          ),
                                          border: const UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          )),
                                    ),
                                    const Gap(20),
                                    TextField(
                                      obscureText: true,
                                      cursorColor: Styles.primeryColor,
                                      style: const TextStyle(fontSize: 14),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                          hintStyle: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black38),
                                          hintText: 'Confirm New Password',
                                          suffixIcon: const Icon(
                                            Icons.remove_red_eye,
                                            color: Colors.black,
                                          ),
                                          prefixIcon: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Icon(
                                              Icons.key,
                                              color: Styles.primeryColor,
                                              size: 30,
                                            ),
                                          ),
                                          border: const UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Styles.primeryColor,
                                            ),
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 225,
                            left: 55,
                            child: SizedBox(
                              width: 200,
                              child: Buttonls(
                                data: 'Submit',
                              ),
                            )),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  )
                ],
                // icon: Icon(Icons.thumb_up),
                // content: Text(
                //     'You have scored 10 points, Congratulations!!!'),
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Styles.lightGreyColor,
          foregroundColor: Colors.black,
          elevation: 1,
          title: const Text('Profile'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Icon(Icons.edit),
            ),
          ]),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        foregroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1085&q=80'),
                      ),
                      Text(
                        'Vikas Sharma',
                        style: Styles.mediumSizeText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.place,
                            color: Styles.primeryColor,
                            size: 20,
                          ),
                          Text(
                            'Mohali',
                            style: Styles.smallGreyText,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Gap(20),
                TextFieldWidget('Full Name', Icons.person, 'DR. vikas sharma'),
                const Gap(10),
                TextFieldWidget('Clinic Name', Icons.person, 'Lab'),
                const Gap(10),
                TextFieldWidget('Email', Icons.email, 'vikas@gmail.com'),
                const Gap(10),
                TextFieldWidget('Phone Number', Icons.phone, '235345345'),
                const Gap(10),
                TextFieldWidget('Address', Icons.place, 'Mohali'),
                const Gap(10),
                TextFieldWidget('Licence Number',
                    Icons.format_list_numbered_rounded, '908080'),
                const Gap(10),
                TextFieldWidget('Council Number', Icons.add_card, ''),
                const Gap(10),
                TextFieldWidget('Qualification', Icons.add_card, ''),
                const Gap(10),
                TextFieldWidget('Work Experience', Icons.place, '3 years'),
                const Gap(10),
                TextFieldWidget(
                    'Online Consultancy Fees', Icons.place, '\u{20B9}${200}'),
                const Gap(10),
                TextFieldWidget(
                    'Offline Consultancy Fees', Icons.place, '\u{20B9}${300}'),
                const Gap(10),
                TextFieldWidget('Languages', Icons.place, 'English'),
                const Gap(10),
                TextButton(
                    onPressed: _changePassword,
                    child: Text(
                      'Change Password',
                      style:
                          TextStyle(color: Styles.primeryColor, fontSize: 16),
                    )),
                const Gap(20)
              ],
            )),
      ),
    );
  }
}
