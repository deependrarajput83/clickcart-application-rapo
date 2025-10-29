import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../comman/widget/app_bar.dart';
import '../../../controller/orderpagecontroller/orderpage.dart';
import '../../../utilitis/textstyel.dart';

class RateUsScreen extends StatelessWidget {
  RateUsScreen({super.key});

  final RateUsController rateController = Get.put(RateUsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Rate Us",
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star_rate_rounded, size: 80, color: Colors.amber),
            const SizedBox(height: 20),
            Text(
              "We’d love your feedback!",
              style:
                  CommonTextStyle.medium.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    bool isSelected =
                        index <= rateController.selectedRating.value;
                    return GestureDetector(
                      onTap: () => rateController.updateRating(index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        child: Icon(
                          Icons.star,
                          size: 40,
                          color:
                              isSelected ? Colors.amber : Colors.grey.shade400,
                        ),
                      ),
                    );
                  }),
                )),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                if (rateController.selectedRating.value == -1) {
                  Get.snackbar(
                    duration: Duration(seconds: 2),
                    animationDuration: Duration(milliseconds: 300),
                    "Hey!",
                    "Please select a rating before submitting 🙂",
                    snackPosition: SnackPosition.BOTTOM,
                  );
                } else {
                  Get.snackbar(
                    "Thank You!",
                    "give rating for us",
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              ),
              child: const Text(
                "Submit Rating",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
