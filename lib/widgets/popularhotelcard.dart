import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/utils/constants.dart';

class popularhotelcard extends StatelessWidget {
  const popularhotelcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: Get.width,
      height: 100,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              height: 120,
              width: 100,
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
          Expanded(
            child: ListTile(
                title: const Text("Hotel name"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.locationPin,
                          color: Colors.orange,
                          size: 13,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("23 KM "),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Start from 20 per night",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
                trailing: TextButton.icon(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.star,
                      color: Colors.orange,
                      size: 13,
                    ),
                    label: const Text("5.0"))),
          )
        ],
      ),
    );
  }
}
