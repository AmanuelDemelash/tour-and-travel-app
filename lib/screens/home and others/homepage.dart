import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/controllers/homepagecontroller.dart';
import 'package:tourandtravel/screens/home%20and%20others/chooserooms.dart';
import 'package:tourandtravel/screens/home%20and%20others/popularhotel.dart';
import 'package:tourandtravel/screens/home%20and%20others/trips.dart';
import 'package:tourandtravel/utils/constants.dart';
import 'package:tourandtravel/widgets/homescreen.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  PageController homepageview_controller = PageController(
      initialPage: Get.find<HomepageController>().intial_page.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: GetBuilder<HomepageController>(
          init: Get.find<HomepageController>(),
          initState: (_) {},
          builder: (controller) {
            return PageView(
              controller: homepageview_controller,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                Homescreen(),
                PopularHotel(),
                Trips(),
                Center(
                  child: Text("Booking"),
                ),
                Center(
                  child: Text("User profile information"),
                ),
              ],
              onPageChanged: (value) {
                controller.intial_page.value = value;
              },
            );
          },
        ),
        bottomNavigationBar: Obx(
          () => AnimatedBottomNavigationBar(
            height: 60,
            backgroundColor: Constants.Onbording_bacground_color,
            activeColor: Constants.PRIM_COLOR,
            inactiveColor: Colors.grey,
            gapWidth: 10,
            notchSmoothness: NotchSmoothness.defaultEdge,
            elevation: 10,
            iconSize: 30,
            icons: const [
              Icons.home,
              Icons.favorite,
              Icons.airplanemode_active,
              Icons.bedroom_child,
              Icons.person
            ],

            activeIndex: Get.find<HomepageController>().intial_page.value,

            onTap: (index) {
              Get.find<HomepageController>().intial_page.value = index;
              homepageview_controller.jumpToPage(index);
            },
            //other params
          ),
        )

        //other params

        );
  }
}
