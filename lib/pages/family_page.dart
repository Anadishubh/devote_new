import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class FamilyPage extends StatefulWidget {
  const FamilyPage({super.key});

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Family Details",
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
              left: screenWidth * 0.35,
              right: screenWidth * 0.35,
              child: Image.asset('assets/images/family.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 160),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  _buildFormField('Mother Full Name'),
                  const SizedBox(height: 20),
                  _buildFormField('Mother Occupation'),
                  const SizedBox(height: 20),
                  _buildFormField('Father Full Name'),
                  const SizedBox(height: 20),
                  _buildFormField('Father Occupation'),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _buildFormField('Elder Brothers'),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: _buildFormField('Younger Brothers'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _buildFormField('Elder Sisters'),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: _buildFormField('Younger Sisters'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 44,
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.toNamed('/occupation');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleMedium(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  )
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
          style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 8),
        TextFormField(
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
            contentPadding: const EdgeInsets.symmetric(horizontal: 12)
          ),
        ),
      ],
    );
  }
}