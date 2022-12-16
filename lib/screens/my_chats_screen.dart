import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class MyChatScreen extends StatefulWidget {
  const MyChatScreen({super.key});

  @override
  State<MyChatScreen> createState() => _MyChatScreenState();
}

class _MyChatScreenState extends State<MyChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.lightGreyColor,
        foregroundColor: Colors.black,
        elevation: 1,
        title: const Text('My Chats'),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black45),
                        borderRadius: BorderRadius.circular(100)),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(60)),
                      child: const CircleAvatar(
                        radius: 24,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black45,
                        child: Icon(
                          Icons.person,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  title: const Text('Deepak Joshi'),
                  subtitle: const Text('Hello Maninder'),
                  trailing: Text(
                    'Date',
                    style: Styles.smallGreyText,
                  ),
                ),
                const Divider(
                  height: 0,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black45,
                  thickness: 0.5,
                )
              ],
            );
          }),
    );
  }
}
