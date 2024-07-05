import 'package:devotee_matrimony/constants/CustomTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class DevotionDetails extends StatefulWidget {
  const DevotionDetails({super.key});

  @override
  State<DevotionDetails> createState() => _DevotionDetailsState();
}

class _DevotionDetailsState extends State<DevotionDetails> {
  int? selectedValue = -1;
  List<String> activities = [
    'Chanting',
    'Hearing',
    'Temple Visiting',
    'Reading',
    'Kirtan',
    'Pilgrimage Visiting',
  ];

  List<String> iskonOptions = [
    'Already Connected with ISKCON',
    'Only a Basic idea about ISKCON',
    'Not at all any idea about ISKCON'
  ];

  String? selectedIskonOption;
  bool showTempleFields = false;

  Map<String, bool> activityValues = {
    'Chanting': false,
    'Hearing': false,
    'Temple Visiting': false,
    'Reading': false,
    'Kirtan': false,
    'Pilgrimage Visiting': false,
  };

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Devotional Details",
          style: FontConstant.styleMedium(fontSize: 19, color: Colors.white),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/prof');
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.45,
            width: screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.04,
                left: 22,
                right: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/images/hands.png'),
                  ),
                  const SizedBox(height: 25),
                  CustomTextField(
                    labelText: 'Something about your Devotional life',
                    maxline: 5,
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: iskonOptions.map((option) {
                      return Row(
                        children: [
                          Checkbox(
                            fillColor: WidgetStateProperty.all(Colors.white),
                            checkColor: AppColors.primaryColor,
                            value: selectedIskonOption == option,
                            onChanged: (bool? value) {
                              setState(() {
                                if (value ?? false) {
                                  selectedIskonOption = option;
                                  showTempleFields =
                                      option == 'Already Connected with ISKCON';
                                } else {
                                  selectedIskonOption = null;
                                  showTempleFields = false;
                                }
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                          Text(
                            option,
                            style: FontConstant.styleRegular(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                  if (showTempleFields) ...[
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        CustomTextField(
                          labelText: 'Which temple are you connected to?*',
                          hintText: 'Name of the temple',
                        ),
                        const SizedBox(height: 1),
                        CustomTextField(
                          hintText: 'City of temple',
                        ),
                        const SizedBox(height: 1),
                        CustomTextField(
                          hintText: 'I am doing worship in my home only',
                        )
                      ],
                    ),
                  ],
                  const SizedBox(height: 15),
                  Text(
                    'Devotional Hobbies',
                    style: FontConstant.styleRegular(
                        fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: activities.map((activity) {
                      return Row(
                        children: [
                          Checkbox(
                            fillColor: WidgetStateProperty.all(Colors.white),
                            checkColor: AppColors.primaryColor,
                            value: activityValues[activity] ?? false,
                            onChanged: (bool? value) {
                              setState(() {
                                activityValues[activity] = value ?? false;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                          Text(
                            activity,
                            style: FontConstant.styleRegular(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.offAndToNamed('/spirit');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleRegular(
                          fontSize: 20, color: Colors.white),
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
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
