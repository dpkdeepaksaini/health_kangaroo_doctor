import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(this.titleText, this.inputIcon, this.inputText, {super.key});
  String titleText;
  IconData inputIcon;
  String inputText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const Gap(10),
        TextField(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
            prefixIcon: Icon(
              inputIcon,
              color: Styles.primeryColor,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Text(
              inputText,
              style: const TextStyle(color: Colors.black),
            ),
            fillColor: Styles.lightGreyColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
