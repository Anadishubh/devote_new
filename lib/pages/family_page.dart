import 'package:devotee_matrimony/constants/CustomTextFeild.dart';
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
            Get.offAndToNamed('/spirit');
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
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.2,
                  child: Center(
                    child: Image.asset('assets/images/family.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const CustomTextField(labelText: 'Mother Full Name'),
                      const SizedBox(height: 20),
                      const CustomTextField(labelText: 'Mother occupation'),
                      const SizedBox(height: 20),
                      const CustomTextField(labelText: 'Father Full Name'),
                      const SizedBox(height: 20),
                      const CustomTextField(labelText: 'Father occupation'),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomTextField(labelText: 'Elder Brothers',),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: CustomTextField(labelText: 'Younger Brothers'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomTextField(labelText: 'Elder Sisters'),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: CustomTextField(labelText: 'Younger Sisters'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 44,
                        child: CustomButton(
                          text: 'CONTINUE',
                          onPressed: () {
                            Get.offAndToNamed('/horo');
                          },
                          color: AppColors.primaryColor,
                          textStyle: FontConstant.styleMedium(
                              fontSize: 18, color: Colors.white),
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
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}