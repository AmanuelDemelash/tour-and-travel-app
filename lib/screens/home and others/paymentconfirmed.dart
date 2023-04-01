import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentConfirmed extends StatelessWidget {
  const PaymentConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/payconfirm.jpg",
              width: 200,
              height: 200,
            ),
          ),
          const Text(
            "Payment Confirmed",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text(
            "Room Successfully booked",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black45),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              margin: const EdgeInsets.all(20),
              width: Get.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15)),
                    onPressed: () {
                      Get.offNamed("/homepage");
                    },
                    child: const Text("Back to Home")),
              ))
        ],
      ),
    );
  }
}
