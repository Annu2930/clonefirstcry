import 'package:clone_firstcry/controller/controller.dart';
import 'package:clone_firstcry/pages/explore.dart';
import 'package:clone_firstcry/pages/menu.dart';
import 'package:clone_firstcry/pages/parenting.dart';
import 'package:clone_firstcry/pages/profile.dart';
import 'package:clone_firstcry/pages/shopping.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:iconly/iconly.dart';

class NavBAr extends StatefulWidget {
  const NavBAr({super.key});

  @override
  State<NavBAr> createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
  final controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(

          appBar: AppBar(
              title: Text(
                'Shop for All', // Replace with your desired app bar title
                style: TextStyle(
                  color: Colors.black, // Customize the title color
                  fontSize: 15.0, // Customize the title font size
                  fontWeight: FontWeight.bold, // Customize the title font weight
                ),
              ),
              backgroundColor: Colors.white, // Customize the app bar background color
              actions: [
          IconButton(
          icon: Icon(Icons.search),
          color: Colors.grey,
          onPressed: () {
            // Add your search functionality here
                           },
                         ),
                         IconButton(
                           icon: Icon(Icons.notifications_outlined),
                           color: Colors.grey,
                           onPressed: () {
                             // Add your settings functionality here
                           },
                        ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.grey,
                  onPressed: () {
                    // Add your settings functionality here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  color: Colors.grey,
                  onPressed: () {
                    // Add your settings functionality here
                  },
                ),
              ],
            ),


        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            Shopping(),
            Explore(),
            Parenting(),
            Profile(),
            Menu(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Shopping',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.explore_outlined,
                    size: 20.0,
                  ),
                ),
                label: 'Explore',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.favorite_border_rounded,
                    size: 20.0,
                  ),
                ),
                label: 'Parenting',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.person_2_outlined,
                    size: 20.0,
                  ),
                ),
                label: 'Profile',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.menu,
                    size: 20.0,
                  ),
                ),
                label: 'Menu',
                backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
              ),

            ]),
      );
    });
  }
}

// ignore: unused_element
_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
