import 'package:clickcart/view/cart/cart.dart';
import 'package:clickcart/view/home/homepage.dart';
import 'package:clickcart/view/order/order.dart';
import 'package:clickcart/view/profile/profile.dart';
import 'package:clickcart/view/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/bottomnavbarcontroller/bottomnavc.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  Bottomnavbar bottomnavbar = Get.put(Bottomnavbar());
  final List<Widget> pages = [
    Homepage(),
    Wishlist(),
    Cart(),
    Order(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[bottomnavbar.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomnavbar.selectedIndex.value,
          onTap: bottomnavbar.onItemTapped,
          selectedItemColor: Colors.deepOrange,
          //enableFeedback: false,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              activeIcon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              activeIcon: Icon(Icons.list_alt),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
