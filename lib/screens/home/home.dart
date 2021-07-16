import 'package:study_up_project/constants/controllers.dart';
import 'package:study_up_project/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  int _index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: CustomText(
          text: "StudyUp",
          size: 18,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Rasmil"),
                accountEmail: Text("rasmil1@r.com")),
            ListTile(
              onTap: () {
                authController.signOut();
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Log out"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 20.0,
        currentIndex: _index,
        onTap: (int _index) {
          this._index = _index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_3_fill),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt),
            label: '',
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: Column(),
    );
  }
}
