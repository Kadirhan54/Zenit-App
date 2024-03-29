import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oua_bootcamp/app/modules/add/add_page.dart';
import 'package:oua_bootcamp/app/modules/contact/contact_page.dart';
import 'package:oua_bootcamp/app/modules/dashboard/dashboard_controller.dart';
import 'package:oua_bootcamp/app/modules/discover/discover_page.dart';
import 'package:oua_bootcamp/app/modules/home/home_page.dart';
import 'package:oua_bootcamp/app/modules/profile/profile_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomePage(),
            DiscoverPage(),
            AddPage(),
            ContactPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              _bottomNavBarItem(icon: CupertinoIcons.home, label: 'Home'),
              _bottomNavBarItem(icon: CupertinoIcons.search, label: 'Discover'),
              _bottomNavBarItem(icon: CupertinoIcons.add_circled, label: 'New'),
              _bottomNavBarItem(
                  icon: CupertinoIcons.chat_bubble_2, label: 'Chat'),
              _bottomNavBarItem(icon: CupertinoIcons.person, label: 'Profile'),
            ]),
      );
    });
  }

  _bottomNavBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
