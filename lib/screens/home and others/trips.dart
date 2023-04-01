import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourandtravel/widgets/hotelcard.dart';
import 'package:tourandtravel/widgets/popularhotelcard.dart';

class Trips extends StatelessWidget {
  const Trips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: FaIcon(
          FontAwesomeIcons.plane,
          color: Colors.grey.shade100,
        ),
        elevation: 0,
        title: const Text(
          "Trips",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Recomended Places ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(2, (index) => popularhotelcard()),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Popular Places ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(2, (index) => hotels_card()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
