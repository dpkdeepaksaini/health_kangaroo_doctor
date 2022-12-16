import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class MyWalletDebited extends StatelessWidget {
  const MyWalletDebited({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.info_outline,
            size: 80,
            color: Styles.primeryColor,
          ),
          Text(
            'No Recent Transaction Found',
            style: TextStyle(color: Styles.primeryColor, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
