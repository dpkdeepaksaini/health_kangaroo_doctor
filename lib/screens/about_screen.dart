import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../utils/app_styles.dart';
import 'home_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
        }, icon: Icon(Icons.adaptive.arrow_back)),
        backgroundColor: Styles.lightGreyColor,
        foregroundColor: Colors.black,
        elevation: 1,
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(lorem(words: 600))),
      ),
    );
  }
}
