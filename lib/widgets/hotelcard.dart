import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/utils/constants.dart';

class hotels_card extends StatelessWidget {
  const hotels_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.5,
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    height: 200,
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
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(20)),
                      color: Colors.white.withOpacity(0.5)),
                  child: const Text(
                    "200 birr per Night",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 7,
                right: 12,
                child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                      size: 18,
                    )),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Pan Pasfic Sonargon Daka",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.locationPin,
                      color: Colors.orange,
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("234 Km away")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: () {
                    Get.toNamed("/hoteldetail");
                  },
                  backgroundColor: Constants.PRIM_COLOR,
                  child: const FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
