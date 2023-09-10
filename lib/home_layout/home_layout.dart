import 'package:flutter/material.dart';
import 'package:to_do_app/pages/settings_pages/settings_pages.dart';
import 'package:to_do_app/pages/tasks_pages/tasks_pages.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int CurrentSellectedIndex = 0;
  List<Widget> Screans = [
    TasksPages(),
    SettingsPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Screans[CurrentSellectedIndex],
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 5,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 9.0,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              CurrentSellectedIndex = index;
            });
          },
          currentIndex: CurrentSellectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
      ),
    );
  }
}
