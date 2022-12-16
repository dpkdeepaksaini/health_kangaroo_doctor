import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        height: 100,
        width: 100,
        child: Text('data'),
      ),
      drawer: Container(
        height: 100,
        width: 100,
        child: Text('data'),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
      ),
    );

  }
}
