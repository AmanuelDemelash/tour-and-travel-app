import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tourandtravel/controllers/logincontroller.dart';
import 'package:tourandtravel/utils/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.offNamed("/getstarted"),
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Constants.PRIM_COLOR,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Sign in with your email and password"),
                const SizedBox(height: 35),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: "Email",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(() => TextFormField(
                        obscureText: Get.find<LoginController>().passshow.value,
                        decoration: InputDecoration(
                          labelText: "password",
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                              onPressed: () {
                                Get.find<LoginController>().passshow.value =
                                    !Get.find<LoginController>().passshow.value;
                              },
                              icon: Get.find<LoginController>().passshow.value
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          disabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ))),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: Get.width,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Constants.PRIM_COLOR,
                              elevation: 10,
                              padding: const EdgeInsets.all(20)),
                          onPressed: () {
                            Get.offNamed("/homepage");
                          },
                          child: const Text("Continue"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                        onTap: () => Get.toNamed("/forgotpassword"),
                        child: const Text("Forgot Password?"))
                  ],
                ))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
