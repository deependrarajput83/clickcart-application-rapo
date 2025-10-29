import 'package:clickcart/comman/widget/app_bar.dart';
import 'package:clickcart/view/home/moretab/tab/AllFashion.dart';
import 'package:clickcart/view/home/moretab/tab/AllFurniture.dart';
import 'package:clickcart/view/home/moretab/tab/All_in_one.dart';
import 'package:clickcart/view/home/moretab/tab/AlldetailsSportsPage.dart';
import 'package:clickcart/view/home/moretab/tab/Allelectricdatilspage.dart';
import 'package:clickcart/view/home/moretab/tab/Alltoy.dart';
import 'package:clickcart/view/home/moretab/tab/allmobiledatils.dart';
import 'package:flutter/material.dart';

class Moreproductmain extends StatelessWidget {
  const Moreproductmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: "Store",
        showBack: true,
        actionIcon: Icons.search,
        iconSize: 30,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
        child: Column(
          children: [
            DefaultTabController(
              length: 7,
              child: Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        width: double.infinity,
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.red,
                          splashFactory: NoSplash.splashFactory,
                          indicatorWeight: 1,
                          isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          indicator: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          dividerColor: Colors.transparent,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(text: "All item"),
                            Tab(text: "Fashion"),
                            Tab(text: "Electric"),
                            Tab(text: "Mobile"),
                            Tab(text: "Sport"),
                            Tab(text: "Toy"),
                            Tab(text: "Furniture"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: TabBarView(
                          children: [
                            AllDatilsItemPage(),
                            AllFashionDatilsPage(),
                            AllElectricDatilsPage(),
                            AllDatilsMobilePage(),
                            AllDatilsSportsPage(),
                            AllDatilsToyPage(),
                            AllDatilsFurniturePage(),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
