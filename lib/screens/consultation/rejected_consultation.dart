import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class RejectedConsultationScreen extends StatelessWidget {
  const RejectedConsultationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.lightGreyColor,
        foregroundColor: Colors.black,
        elevation: 1,
        title: const Text('Rejected Consultation'),
      ),
      body: Container(
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
              'No Patient Found',
              style: TextStyle(color: Styles.primeryColor, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
