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
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenHeight*0.4,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: screenWidth * 0.25,
              right: screenWidth * 0.25,
              child: Image.asset('assets/images/education.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 190),
              child: Column(
                children: [
                  _buildFormField('Highest Qualification'),
                  const SizedBox(height: 20),
                  _buildFormField('College'),
                  const SizedBox(height: 20),
                  _buildFormField('Diploma (if any)'),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 44,
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.toNamed('/family');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleMedium(
                          fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 44,
                    child: CustomButton(
                      text: 'Skip',
                      onPressed: () {
                        Get.toNamed('/dashboard');
                      },
                      color: Colors.transparent,
                      textStyle: FontConstant.styleMedium(
                          fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormField(String labelText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: FontConstant.styleMedium(fontSize: 14, color: Colors.black),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: AppColors.primaryColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}