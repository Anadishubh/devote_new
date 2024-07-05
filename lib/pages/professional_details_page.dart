import 'package:devotee_matrimony/constants/CustomTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/custom_dropdown.dart';
import '../constants/font_constant.dart';
import '../constants/profile_constant.dart';

class ProfessionalDetailsPage extends StatefulWidget {
  const ProfessionalDetailsPage({super.key});

  @override
  State<ProfessionalDetailsPage> createState() =>
      _ProfessionalDetailsPageState();
}

class _ProfessionalDetailsPageState extends State<ProfessionalDetailsPage> {
  int? selectedValue;

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
          "Professional Details",
          style: FontConstant.styleMedium(fontSize: 19, color: Colors.white),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/education');
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
                    child: Image.asset('assets/images/occupation.png'),
                  ),
                  const SizedBox(height: 25),
                  buildDropdown(
                    'Title of the profession',
                    QualificationController.qualifications(),
                    qualificationController.selectedItem.call,
                    hintText: 'Choose',
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Working anywhere?*',
                    style: FontConstant.styleRegular(
                        fontSize: 16, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<int>(
                          title: const Text('Yes'),
                          activeColor: AppColors.primaryColor,
                          value: 1,
                          groupValue: selectedValue,
                          onChanged: (int? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<int>(
                          title: const Text('No'),
                          activeColor: AppColors.primaryColor,
                          value: 2,
                          groupValue: selectedValue,
                          onChanged: (int? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    labelText: 'Company name',
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    labelText: 'Working State',
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    labelText: 'Working city',
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    labelText: 'Work experience',
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Income earning range (in a year)',
                    style: FontConstant.styleRegular(
                        fontSize: 16, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: buildDropdown(
                          null,
                          QualificationController.qualifications(),
                          qualificationController.selectedItem.call,
                          hintText: 'Range from',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: buildDropdown(
                          null,
                          QualificationController.qualifications(),
                          qualificationController.selectedItem.call,
                          hintText: 'Range to',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.offAndToNamed('/devotion');
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
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
