import 'package:devotee_matrimony/constants/custom_dropdown.dart';
import 'package:devotee_matrimony/constants/profile_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    QualificationController qualificationController =
        Get.put(QualificationController());

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Education Qualification",
          style: FontConstant.styleMedium(fontSize: 19, color: Colors.white),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/contact');
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
              left: screenWidth * 0.35,
              right: screenWidth * 0.35,
              child: Image.asset('assets/images/education.png'),
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
                  buildDropdown(
                      'Highest Qualification*',
                      QualificationController.qualifications(),
                      qualificationController.selectedItem.call, hintText: 'Choose'),
                  const SizedBox(height: 15),
                  _buildFormField('College/Institution name'),
                  const SizedBox(height: 15),
                  _buildFormField('Describe other details(if any)',maxLines: 6),
                  // _buildSectionTitle('Describe other details(if any)'),
                  const SizedBox(height: 8),
                  // _buildTextAreaField(),
                  const SizedBox(height: 30),
                  _buildContinueButton(),
                  const SizedBox(height: 15),
                  _buildSkipButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormField(String labelText, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 8),
        TextFormField(
          maxLines: maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
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
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
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
