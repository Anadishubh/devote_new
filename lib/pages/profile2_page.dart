import 'package:devotee_matrimony/constants/CustomTextFeild.dart';
import 'package:devotee_matrimony/constants/button_constant.dart';
import 'package:devotee_matrimony/constants/color_constant.dart';
import 'package:devotee_matrimony/constants/custom_dropdown.dart';
import 'package:devotee_matrimony/constants/font_constant.dart';
import 'package:devotee_matrimony/constants/profile_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile2Page extends StatefulWidget {
  const Profile2Page({super.key});

  @override
  State<Profile2Page> createState() => _Profile2PageState();
}

class _Profile2PageState extends State<Profile2Page> {
  ComplexionController complexionController = Get.put(ComplexionController());
  HeightController heightController = Get.put(HeightController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Basic Details",
          style: FontConstant.styleSemiBold(fontSize: 18, color: Colors.white),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/profile1');
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
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/images/profile.png'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "(*) Fields are mandatory",
                    style: FontConstant.styleRegular(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    labelText: 'Full name*',
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    labelText: 'Initiated name (Spiritual name)',
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Expanded(child: CustomTextField(labelText: 'Gotra*',)),
                      SizedBox(width: 10),
                      Expanded(child: CustomTextField(labelText: 'Caste*',)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: buildDropdown(
                          'Height',
                          HeightController.heightTypes(),
                          heightController.selectItem,
                          hintText: 'Choose',
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(child: CustomTextField(labelText: 'Weight*',)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  _buildDateOfBirthFields(),
                  const SizedBox(height: 15),
                  const CustomTextField(labelText: 'Current Staying City*',),
                  const SizedBox(height: 15),
                  const CustomTextField(labelText: 'Permanent City*',),
                  const SizedBox(height: 15),
                  const CustomTextField(labelText: 'Hobbies*',),
                  const SizedBox(height: 15),
                  buildDropdown(
                    'Diet',
                    HeightController.heightTypes(),
                    heightController.selectedItem.call,
                    hintText: 'Choose',
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(height: 8),
                  const CustomTextField(labelText: 'About',maxline: 5,maxlength: 160,),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.offAndToNamed('/contact');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleRegular(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateOfBirthFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date Of Birth*',
          style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: _buildDateField('Day', 2),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _buildDateField('Month', 2),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _buildDateField('Year', 4),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDateField(String hintText, int maxLength) {
    return TextFormField(
      keyboardType: TextInputType.number,
      maxLength: maxLength,
      decoration: InputDecoration(
        counterText: "",
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }
}