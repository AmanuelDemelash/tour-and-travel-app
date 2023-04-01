import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tourandtravel/utils/constants.dart';
import 'package:tourandtravel/widgets/hotelcard.dart';

import 'homepage.dart';

class CityDetail extends StatelessWidget {
  CityDetail({super.key});

  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Get.offNamed("/homepage"),
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: Colors.black,
            )),
        title: const Text(
          "City name",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
              height: 40,
              width: 140,
              margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintStyle: const TextStyle(fontSize: 11),
                      hintText: "Search for hotel",
                      fillColor: Constants.Onbording_bacground_color,
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: const Icon(Icons.search),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Constants.Onbording_bacground_color),
                          borderRadius: BorderRadius.circular(20)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Constants.Onbording_bacground_color),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Constants.Onbording_bacground_color),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Constants.Onbording_bacground_color),
                          borderRadius: BorderRadius.circular(20))),
                ),
              )),
        ],
      ),
      body: Stack(children: [
        Container(
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: const CameraPosition(
                target: LatLng(9.005401, 38.763611), zoom: 15),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: Get.height / 1.7,
              width: Get.width,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Center(
                  child: Column(
                children: const [
                  SizedBox(
                    width: 50,
                    child: Divider(
                      thickness: 5,
                      color: Colors.white,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "20 Places to Stay",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: Get.width,
            height: Get.height / 2.1,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  3,
                  (index) => const hotels_card(),
                )),
          ),
        )
      ]),
    );
  }
}
