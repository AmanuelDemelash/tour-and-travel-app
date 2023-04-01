import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/controllers/onbordingcontroler.dart';
import 'package:tourandtravel/model/onbordmodel.dart';
import 'package:tourandtravel/utils/constants.dart';

class Onbording extends StatelessWidget {
  Onbording({Key? key}) : super(key: key);

  PageController controller = PageController(initialPage: 0);

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
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GetBuilder<OnbordingController>(
                  init: Get.find<OnbordingController>(),
                  initState: (_) {},
                  builder: (onbordcontroller) {
                    return PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller,
                        children: [
                          onbordscreen(
                              Get.find<OnbordingController>().onbordlist[0]),
                          onbordscreen(
                              Get.find<OnbordingController>().onbordlist[1]),
                          onbordscreen(
                              Get.find<OnbordingController>().onbordlist[2]),
                        ],
                        onPageChanged: (value) {
                          onbordcontroller.intialpage.value = value;
                        });
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(14),
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Row(
                          children: List.generate(
                              3,
                              (index) => AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    margin: const EdgeInsets.all(5),
                                    width: Get.find<OnbordingController>()
                                                .intialpage
                                                .value ==
                                            index
                                        ? 25
                                        :5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: Constants.PRIM_COLOR,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )),
                        )),
                    FloatingActionButton(
                        elevation: 10,
                        child: FaIcon(
                          FontAwesomeIcons.arrowRight,
                          color: Colors.white,
                        ),
                        backgroundColor: Constants.PRIM_COLOR,
                        onPressed: () {
                          var page =
                              Get.find<OnbordingController>().intialpage.value;
                          if (Get.find<OnbordingController>()
                                  .intialpage
                                  .value ==
                              2) {
                            Get.offNamed("/getstarted");
                          } else {
                            controller.jumpToPage(page + 1);
                          }
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container onbordscreen(OnbordModel onbordModel) {
    return Container(
      margin: const EdgeInsets.only(top: 35, left: 15, right: 15),
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            onbordModel.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(onbordModel.desc),
          const SizedBox(height: 100),
          Center(
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: onbordModel.image_url.toString(),
              placeholder: (context, url) => const Center(
                child: FaIcon(
                  FontAwesomeIcons.image,
                  color: Constants.PRIM_COLOR,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
