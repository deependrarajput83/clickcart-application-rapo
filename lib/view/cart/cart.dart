import 'package:clickcart/comman/widget/clickbutton.dart';
import 'package:clickcart/utilitis/textstyel.dart';
import 'package:clickcart/view/cart/widget/cartappbar.dart';
import 'package:clickcart/view/cart/widget/cartdata.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Cartappbar(),
            Expanded(child: Cartdata()),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 75,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Row(
              children: [
                const Text(
                  "Total Price=>",
                  style: CommonTextStyle.medium,
                ),
                const SizedBox(height: 2),
                Text(
                  "₹2421.00",
                  style: AuthText.subHeading,
                ),
                const Spacer(),
                ClickButton(
                    child: Text(
                      "Checkout",
                      style: CommonTextStyle.coloredBold(Colors.white),
                    ),
                    onTap: () {
                      print("Click me");
                    })
              ],
            ),
          )),
    );
  }
}
