import 'package:clone_firstcry/navbar/navbar.dart';
import 'package:clone_firstcry/pages/explore.dart';
import 'package:clone_firstcry/pages/menu.dart';
import 'package:clone_firstcry/pages/parenting.dart';
import 'package:clone_firstcry/pages/profile.dart';
import 'package:clone_firstcry/pages/shopping.dart';
import 'package:get/get.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBAr()),
    GetPage(name: shopping, page: () => const Shopping()),
    GetPage(name: explore, page: () => const Explore()),
    GetPage(name: parenting, page: () => const Parenting()),
    GetPage(name: profile, page: () => const Profile()),
    GetPage(name: menu, page: () => const Menu()),
  ];

  static getnavbar() => navbar;
  static getshopping() => shopping;
  static getexplore() => explore;
  static getparenting() => parenting;
  static getprofile() => profile;
  static getmenu() => menu;
  //

  static String navbar = '/';
  static String shopping = '/shopping';
  static String explore = '/explore';
  static String parenting = '/parenting';
  static String profile = '/profile';
  static String menu = '/menu';
}
