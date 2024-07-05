import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/CustomTextFeild.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  TextEditingController name = TextEditingController();
  TextEditingController connect = TextEditingController();
  TextEditingController temple = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController something = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Location details",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/contact');
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/bg3.png")),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/location.png",
                      height: 92,
                      width: 92,
                    ),
                  ),
                  CustomTextField(
                    controller: name,
                    labelText: 'Name of the Counselor for my Spiritual Path',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: connect,
                    labelText: 'Connected with my Counselor Since - Year',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: state,
                    labelText:
                        'With which temple your counsellor is connected to?"',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: city,
                    labelText: 'Counselor residing in State',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: something,
                    labelText: 'Counselor residing in City',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 5,
                    controller: name,
                    labelText: 'Something more about the counsellor',
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.offAndToNamed('/education');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleRegular(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomButton(
                      text: 'Skip',
                      onPressed: () {
                        Get.offAndToNamed('/dashboard');
                      },
                      color: Colors.transparent,
                      textStyle: FontConstant.styleRegular(
                          fontSize: 20, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
