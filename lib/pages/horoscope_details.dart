import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/CustomTextFeild.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class HoroscopeDetails extends StatefulWidget {
  const HoroscopeDetails({super.key});

  @override
  State<HoroscopeDetails> createState() => _HoroscopeDetailsState();
}

class _HoroscopeDetailsState extends State<HoroscopeDetails> {
  TextEditingController day = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Horoscope Details",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/family');
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
                      "assets/images/horo.png",
                      height: 117,
                      width: 109,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: CustomTextField(
                        controller: day,
                        hintText: "Day",
                        keyboardType: TextInputType.number,
                        maxlength: 2,
                        maxline: null,
                        labelText: 'Date of Birth*',
                      )),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: CustomTextField(
                        controller: month,
                        hintText: "Month",
                        keyboardType: TextInputType.number,
                        maxlength: 2,
                        maxline: null,
                        labelText: '',
                      )),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: CustomTextField(
                          controller: year,
                          hintText: "Year",
                          keyboardType: TextInputType.number,
                          maxlength: 4,
                          maxline: null,
                          labelText: '',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: time,
                    hintText: "select option",
                    maxline: null,
                    labelText: 'Time Of Birth',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: state,
                    labelText: 'State of Birth',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: city,
                    labelText: 'City of Birth',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, bottom: 15),
                    child: CustomButton(
                        text: "CONTINUE",
                        onPressed: () => {Get.toNamed('/photo')},
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
