import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/utils/constants.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height / 2.5,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                width: Get.width,
                imageUrl:
                    "https://images.unsplash.com/photo-1478131143081-80f7f84ca84d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                placeholder: (context, url) => const Center(
                  child: FaIcon(
                    FontAwesomeIcons.image,
                    color: Constants.PRIM_COLOR,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 15,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.white,
                  ),
                  onPressed: () => Get.back(),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 15,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.white,
                  ),
                  onPressed: () => Get.back(),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  width: Get.width,
                  height: Get.height / 1.5,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Pan Pasfic Sonargon Daka",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.locationPin,
                            color: Colors.orange,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("2036 kilometer away",
                              style: TextStyle(
                                color: Colors.black45,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.star,
                                color: Colors.orange,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("4.9(255) reviews",
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ))
                            ],
                          ),
                          Row(
                            children: const [
                              Text("Map Diraction"),
                              SizedBox(
                                width: 5,
                              ),
                              FaIcon(
                                FontAwesomeIcons.mapPin,
                                color: Colors.orange,
                                size: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: Get.width,
                height: Get.height / 2,
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Facilities",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.orange.shade100,
                                  onPressed: () {},
                                  child: const FaIcon(
                                    FontAwesomeIcons.wifi,
                                    color: Colors.orange,
                                  ),
                                ),
                                const Text(
                                  "Wifi",
                                  style: TextStyle(color: Colors.black45),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.green.shade100,
                                  onPressed: () {},
                                  child: const FaIcon(
                                    FontAwesomeIcons.weightHanging,
                                    color: Colors.green,
                                  ),
                                ),
                                const Text(
                                  "Gym",
                                  style: TextStyle(color: Colors.black45),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.pink.shade100,
                                  onPressed: () {},
                                  child: const FaIcon(
                                    FontAwesomeIcons.spa,
                                    color: Colors.pink,
                                  ),
                                ),
                                const Text(
                                  "Spa",
                                  style: TextStyle(color: Colors.black45),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.blue.shade100,
                                  onPressed: () {},
                                  child: const FaIcon(
                                    FontAwesomeIcons.parking,
                                    color: Colors.blue,
                                  ),
                                ),
                                const Text(
                                  "Parking",
                                  style: TextStyle(color: Colors.black45),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.blue.shade100,
                                  onPressed: () {},
                                  child: const FaIcon(
                                    FontAwesomeIcons.restroom,
                                    color: Colors.blue,
                                  ),
                                ),
                                const Text(
                                  "RestRoom",
                                  style: TextStyle(color: Colors.black45),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "Photo",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            4,
                            (index) => Container(
                              width: 150,
                              height: 100,
                              margin: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      "https://images.unsplash.com/photo-1478131143081-80f7f84ca84d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                  placeholder: (context, url) => const Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.image,
                                      color: Constants.PRIM_COLOR,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "In publishing and graphic design, Led to demonstrate the vor a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.",
                        style: TextStyle(color: Colors.black45),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: Get.width,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(10)),
                              onPressed: () {
                                Get.bottomSheet(hotel_detail_bottomshet());
                              },
                              icon: const FaIcon(FontAwesomeIcons.arrowRight),
                              label: const Text("Continue")),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class hotel_detail_bottomshet extends StatelessWidget {
  const hotel_detail_bottomshet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Container(
              width: Get.width,
              height: Get.height,
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Stack(children: [
                  Column(
                    children: [
                      const SizedBox(
                        width: 60,
                        child: Divider(
                          thickness: 3,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: const Text("Select Dates"),
                        subtitle: const Text(
                            "Add your booking dates for exact pricing"),
                        leading: IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
                      ),
                      SizedBox(
                        child: DateRangePickerDialog(
                            initialEntryMode: DatePickerEntryMode.calendar,
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now()),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: Get.width,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "399 Birr",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text("/night",
                                  style: TextStyle(
                                    color: Colors.black45,
                                  )),
                            ],
                          ),
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: SizedBox(
                              width: 130,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(10)),
                                  onPressed: () {
                                    Get.back();
                                    Get.toNamed("/chooserooms");
                                  },
                                  child: const Text("Save")),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            );
          }),
    );
  }
}
