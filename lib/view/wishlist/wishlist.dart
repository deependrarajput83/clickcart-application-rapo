import 'package:clickcart/utilitis/textstyel.dart';
import 'package:clickcart/view/wishlist/widget/wishappbar.dart';
import 'package:clickcart/view/wishlist/widget/wishlistdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/widget/searchbarpage.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35),
            Wishappbar(),
            SizedBox(height: Get.height * 0.02),
            SearchBarPage(),
            SizedBox(height: Get.height * 0.02),
            const Text("My Wishlist", style: CommonTextStyle.bold),
            Expanded(child: WishListData()),
          ],
        ),
      ),
    );
  }
}
