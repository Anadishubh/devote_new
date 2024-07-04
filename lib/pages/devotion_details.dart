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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: screenWidth * 0.32,
              right: screenWidth * 0.32,
              child: Image.asset('assets/images/hands.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.2,
                left: 22,
                right: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  _buildFormField(
                      labelText: 'Something about your Devotional life',
                      hintText: null,
                      maxLines: 5),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Column(
                        children: iskonOptions.map((option) {
                          return Row(
                            children: [
                              Checkbox(
                                fillColor:
                                    WidgetStateProperty.all(Colors.white),
                                checkColor: AppColors.primaryColor,
                                value: selectedIskonOption == option,
                                onChanged: (bool? value) {
                                  setState(
                                    () {
                                      if (value ?? false) {
                                        selectedIskonOption = option;
                                        showTempleFields = option ==
                                            'Already Connected with ISKCON';
                                      } else {
                                        selectedIskonOption = null;
                                        showTempleFields = false;
                                      }
                                    },
                                  );
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
                    ],
                  ),
                  if (showTempleFields) ...[
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        _buildFormField(
                            labelText: 'Which temple are you connected to?*',
                            hintText: 'Name of the temple'),
                        const SizedBox(height: 1),
                        _buildFormField(
                            labelText: null, hintText: 'City of temple'),
                        const SizedBox(height: 1),
                        _buildFormField(
                            labelText: null,
                            hintText: 'I am doing worship in my home only'),
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
                  _buildContinueButton(),
                  const SizedBox(height: 15),
                  _buildSkipButton(),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormField({
    String? labelText,
    int maxLines = 1,
    String? hintText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(
            labelText,
            style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
          ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hintText ?? '',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(23),
                borderSide: const BorderSide(color: AppColors.primaryColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(23),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContinueButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: CustomButton(
        text: 'CONTINUE',
        onPressed: () {
          Get.offAndToNamed('/prof');
        },
        color: AppColors.primaryColor,
        textStyle: FontConstant.styleRegular(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _buildSkipButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: CustomButton(
        text: 'Skip',
        onPressed: () {
          Get.offAndToNamed('/dashboard');
        },
        color: Colors.transparent,
        textStyle: FontConstant.styleRegular(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
