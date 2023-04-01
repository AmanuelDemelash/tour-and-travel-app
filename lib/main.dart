import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/bindings/appbinding.dart';
import 'package:tourandtravel/screens/home%20and%20others/booking.dart';
import 'package:tourandtravel/screens/home%20and%20others/chooserooms.dart';
import 'package:tourandtravel/screens/home%20and%20others/citydetail.dart';
import 'package:tourandtravel/screens/home%20and%20others/homepage.dart';
import 'package:tourandtravel/screens/home%20and%20others/hoteldetail.dart';
import 'package:tourandtravel/screens/home%20and%20others/paymentconfirmed.dart';
import 'package:tourandtravel/screens/home%20and%20others/paymentmethod.dart';
import 'package:tourandtravel/screens/home%20and%20others/search.dart';
import 'package:tourandtravel/screens/home%20and%20others/trips.dart';
import 'package:tourandtravel/screens/splash%20and%20onbording/getstarted.dart';
import 'package:tourandtravel/utils/constants.dart';
import 'screens/signin and login/forgotpassword.dart';
import 'screens/signin and login/login.dart';
import 'screens/signin and login/signup.dart';
import 'screens/splash and onbording/onbording.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      title: 'Tour and Travel',
      theme: ThemeData(
        colorScheme:
            ColorScheme.light().copyWith(primary: Constants.PRIM_COLOR),
      ),
      initialRoute: "/onbording",
      getPages: [
        GetPage(name: "/onbording", page: () => Onbording()),
        GetPage(name: "/getstarted", page: () => const Getstarted()),
        GetPage(name: "/login", page: () => const Login()),
        GetPage(name: "/signup", page: () => const SignUp()),
        GetPage(name: "/forgotpassword", page: () => const ForgotPassword()),
        GetPage(name: "/homepage", page: () => Homepage()),
        GetPage(name: "/citydetail", page: () => CityDetail()),
        GetPage(name: "/chooserooms", page: () => const ChooseRooms()),
        GetPage(name: "/hoteldetail", page: () => const HotelDetail()),
        GetPage(name: "/booking", page: () => const Booking()),
        GetPage(name: "/paymentmethod", page: () => const PaymentMethod()),
        GetPage(name: "/paymentconfirm", page: () => const PaymentConfirmed()),
        GetPage(name: "/search", page: () => const Seaarch()),
        GetPage(name: "/trips", page: () => const Trips())
      ],
    );
  }
}
