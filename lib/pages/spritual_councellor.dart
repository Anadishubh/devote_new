import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/CustomTextFeild.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class SpiritualDetails extends StatefulWidget {
  const SpiritualDetails({super.key});

  @override
  State<SpiritualDetails> createState() => _SpiritualDetailsState();
}

class _SpiritualDetailsState extends State<SpiritualDetails> {
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
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Spiritual Counsellor Details",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/devotion');
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
                      "assets/images/spirit.png",
                      height: 92,
                      width: 92,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    controller: name,
                    maxline: null,
                    labelText: 'Name of the Counselor for my Spiritual\nPath',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: connect,
                    maxline: null,
                    labelText: 'Connected with my Counselor Since - Year',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: state,
                    maxline: null,
                    labelText:
                        'With which temple your counsellor is connected to?',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: city,
                    maxline: null,
                    labelText: 'Counselor residing in State',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: something,
                    maxline: null,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 15),
                    child: CustomButton(
                        text: "CONTINUE",
                        onPressed: () => {Get.toNamed('/family')},
                        color: AppColors.primaryColor,
                        textStyle: FontConstant.styleRegular(
                            fontSize: 20, color: AppColors.constColor)),
                  ),
                  GestureDetector(
                    onTap: () => {Get.offAndToNamed('/dashboard')},
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 25, top: 10),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "SKIP",
                        style: FontConstant.styleRegular(
                            fontSize: 20, color: AppColors.black),
                      ),
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
