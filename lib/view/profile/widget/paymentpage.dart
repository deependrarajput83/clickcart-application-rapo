import 'package:flutter/material.dart';

import '../../../comman/widget/app_bar.dart';
import '../../../comman/widget/textformfield.dart';
import '../../../utilitis/textstyel.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cardNumber = TextEditingController();
    final cardHolder = TextEditingController();
    final expiryDate = TextEditingController();
    final cvv = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(
        title: "Add New Card",
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.redAccent,
                  child: Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5),
                const Text("Card Number", style: AuthText.label),
              ],
            ),
            const SizedBox(height: 10),
            CommonTextfield(
              controller: cardNumber,
              hintText: "Card Number",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 5),
                const Text("Holder name", style: AuthText.label),
              ],
            ),
            const SizedBox(height: 10),
            CommonTextfield(
                controller: cardHolder, hintText: "Card Holder Name"),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.orange,
                            child: Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text("Expiry Data", style: AuthText.label),
                        ],
                      ),
                      const SizedBox(height: 10),
                      CommonTextfield(
                          controller: expiryDate, hintText: "Expiry (MM/YY)"),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.orange,
                            child: Icon(
                              Icons.cached_rounded,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text("CVV", style: AuthText.label),
                        ],
                      ),
                      const SizedBox(height: 10),
                      CommonTextfield(controller: cvv, hintText: "CVV"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text("Save Card", style: AuthText.button),
            ),
          ],
        ),
      ),
    );
  }
}
