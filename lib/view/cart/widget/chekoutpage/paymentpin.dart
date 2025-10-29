import 'package:clickcart/comman/widget/clickbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../comman/widget/app_bar.dart';
import '../../../../comman/widget/bigbutton.dart';
import '../../../../utilitis/color.dart';
import '../../../../utilitis/textstyel.dart';
import '../../../order/order.dart';

class Paymentpin extends StatefulWidget {
  const Paymentpin({super.key});
  @override
  State<Paymentpin> createState() => _PaymentpinState();
}

class _PaymentpinState extends State<Paymentpin> {
  final List<TextEditingController> pincontroller =
      List.generate(4, (_) => TextEditingController());
  final _formKey = GlobalKey<FormState>();
  String? _errorText;
  void _checkPin() {
    String enteredPin = pincontroller.map((c) => c.text).join();
    if (enteredPin.length < 4) {
      setState(() => _errorText = "Please enter all 4 digits");
    } else {
      setState(() => _errorText = null);
      Get.dialog(
        Center(
          child: Container(
            height: Get.height * 0.6,
            width: Get.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green.shade700,
                      radius: 10,
                      child: Icon(
                        Icons.check,
                        size: 40,
                        weight: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text("Order Successful!",
                    style: CommonTextStyle.Details.copyWith(
                        decoration: TextDecoration.none)),
                SizedBox(height: 10),
                Text(
                  "You have Successful made order",
                  style: CommonTextStyle.small
                      .copyWith(decoration: TextDecoration.none),
                ),
                const SizedBox(height: 35),
                ClickButton(
                  onTap: () {
                    Get.to(Order());
                  },
                  child: Text(
                    "View Order",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: "Payment pin",
        showBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: TextFormField(
                      controller: pincontroller[index],
                      autofocus: index == 0,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty && index < 3) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty && index > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                    ),
                  ),
                ),
              ),
              if (_errorText != null)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    _errorText!,
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40, right: 15, top: 0, bottom: 0),
        child: CommonButton(
          color: AppColor.buttonOrange,
          onTap: _checkPin,
          child: Text(
            "Continue",
            style: CommonTextStyle.coloredBold(Colors.white),
          ),
        ),
      ),
    );
  }
}
