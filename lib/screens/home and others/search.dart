import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/utils/constants.dart';

class Seaarch extends StatelessWidget {
  const Seaarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      enabled: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          hintText: "Search for hotel",
                          fillColor: Constants.Onbording_bacground_color,
                          contentPadding: EdgeInsets.all(15),
                          prefixIcon: const Icon(Icons.search),
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.orange.shade200])),
                    child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.multiply,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Recent Searches",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                    4,
                    (index) => Container(
                          height: 50,
                          width: Get.width,
                          color: Colors.white,
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Constants.Onbording_bacground_color,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: const Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.locationPin,
                                      color: Constants.PRIM_COLOR,
                                    ),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Dahaka"),
                                  Text(
                                    "Pasfic dahaka hotel",
                                    style: TextStyle(color: Colors.black45),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
