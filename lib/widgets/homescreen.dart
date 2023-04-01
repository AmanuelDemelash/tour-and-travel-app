import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/utils/constants.dart';
import 'package:tourandtravel/widgets/carouselSlider.dart';
import 'package:tourandtravel/widgets/hotelcard.dart';

import '../screens/home and others/homepage.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hello Juli",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 15),
                          ),
                          Text(
                            "Lets Find Best Hotel",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Expanded(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                        onPressed: () {},
                        child: const FaIcon(
                          FontAwesomeIcons.bell,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                height: 80,
                width: Get.width,
                margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Center(
                  child: GestureDetector(
                    onTap: () => Get.toNamed("/search"),
                    child: TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          hintText: "Search for hotel",
                          fillColor: Constants.Onbording_bacground_color,
                          contentPadding: const EdgeInsets.all(15),
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Constants.PRIM_COLOR),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.menu_open,
                                  color: Colors.white,
                                )),
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Constants.Onbording_bacground_color),
                              borderRadius: BorderRadius.circular(10)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Constants.Onbording_bacground_color),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Constants.Onbording_bacground_color),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Constants.Onbording_bacground_color),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 15, bottom: 15),
              child: Text(
                "Explore City",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Constants.PRIM_COLOR,
                          child: FaIcon(
                            FontAwesomeIcons.locationPin,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Nearby",
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          9,
                          (index) => Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: GestureDetector(
                              onTap: () => Get.toNamed("/citydetail"),
                              child: Column(
                                children: const [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1444723121867-7a241cacace9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                  ),
                                  Text("Daka",
                                      style: TextStyle(color: Colors.black54))
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            const carousel_slider(),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Recommended for your next trip",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 320,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    3,
                    (index) => const hotels_card(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
