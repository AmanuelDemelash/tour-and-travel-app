import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/controllers/onbordingcontroler.dart';
import 'package:tourandtravel/utils/constants.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Constants.Onbording_bacground_color, Colors.white],
              begin: Alignment.topCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: Get.height / 1.7,
                width: Get.width,
                margin: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(10),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    height: 250,
                    imageUrl:
                        Get.find<OnbordingController>().onbordlist[1].image_url,
                    placeholder: (context, url) =>
                        FaIcon(FontAwesomeIcons.image),
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    const Text(
                      "Lets Get Started",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const Text(
                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                elevation: 10,
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                backgroundColor: Colors.blue),
                            onPressed: () {},
                            child: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                                elevation: 10,
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: const FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.blue,
                            )),
                        TextButton(
                            style: TextButton.styleFrom(
                                elevation: 10,
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: const FaIcon(
                              FontAwesomeIcons.apple,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Container(
                      width: Get.width,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(15),
                                elevation: 10,
                                backgroundColor: Constants.PRIM_COLOR),
                            onPressed: () {
                              Get.toNamed("/signup");
                            },
                            child: const Text("Sign Up with Mobile")),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () => Get.offNamed("/login"),
                        child: const Text("Aleardy have an account? Login ")),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
