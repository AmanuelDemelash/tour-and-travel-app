import 'package:flutter/material.dart';
import 'package:tourandtravel/utils/constants.dart';
import 'package:tourandtravel/widgets/popularhotelcard.dart';

class PopularHotel extends StatelessWidget {
  const PopularHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Icon(
          Icons.hotel,
          color: Constants.Onbording_bacground_color,
        ),
        title: const Text(
          "Popular Hotel",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,

          // list of hotels.... change listview to listview builder after faching data
          children: List.generate(8, (index) => popularhotelcard()),
        ),
      ),
    );
  }
}
