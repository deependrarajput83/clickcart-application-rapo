import 'package:clickcart/view/order/widget/deliveredpage.dart';
import 'package:clickcart/view/order/widget/ongoingscreen.dart';
import 'package:clickcart/view/order/widget/ordercustumappbar.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              OrderappBar(),
              TabBar(
                indicatorColor: Colors.deepOrange,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                dividerHeight: 2,
                splashBorderRadius: BorderRadius.circular(20),
                labelColor: Colors.orange,
                tabs: [
                  const Tab(text: "Ongoing"),
                  const Tab(text: "Delivered"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [Ongoingscreen(), Deliverdpagescreen()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
