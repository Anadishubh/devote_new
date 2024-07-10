import 'package:devotee_matrimony/constants/custom_dropdown.dart';
import 'package:devotee_matrimony/constants/profile_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/CustomTextFeild.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  TextEditingController pinCode = TextEditingController();
  TextEditingController connect = TextEditingController();
  TextEditingController temple = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController something = TextEditingController();
  CountryController countryController = Get.put(CountryController());
  StateController stateController = Get.put(StateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Location details",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/contact');
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/location.png",
                      height: 92,
                      width: 92,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildDropdown('Nationality', CountryController.countryList(),
                      countryController.selectedItem.call,
                      hintText: 'India'),
                  const SizedBox(
                    height: 15,
                  ),
                  buildDropdown(
                      'Residence type',
                      CountryController.countryList(),
                      countryController.selectedItem.call,
                      hintText: 'Visa/Student visa'),
                  const SizedBox(
                    height: 15,
                  ),
                  buildDropdown('House type', CountryController.countryList(),
                      countryController.selectedItem.call,
                      hintText: 'Own'),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Permanent Address Location',
                    style: FontConstant.styleMedium(
                        fontSize: 18, color: AppColors.primaryColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildDropdown('State', StateController.stateRegion(),
                      stateController.selectedItem.call,
                      hintText: 'Uttar Pradesh'),
                  const SizedBox(
                    height: 15,
                  ),
                  buildDropdown('City', StateController.stateRegion(),
                      stateController.selectedItem.call,
                      hintText: 'Select'),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Pin Code',
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Temporary Address Location',
                    style: FontConstant.styleMedium(
                        fontSize: 18, color: AppColors.primaryColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildDropdown('State', StateController.stateRegion(),
                      stateController.selectedItem.call,
                      hintText: 'Uttar Pradesh'),
                  const SizedBox(
                    height: 15,
                  ),
                  buildDropdown('City', StateController.stateRegion(),
                      stateController.selectedItem.call,
                      hintText: 'Select'),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Pin Code',
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Reference 1',
                    style: FontConstant.styleMedium(
                        fontSize: 18, color: AppColors.primaryColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildDropdown('Relation', StateController.stateRegion(),
                      stateController.selectedItem.call,
                      hintText: 'Family'),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Name',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Email',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Mobile',
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Reference 2',
                    style: FontConstant.styleMedium(
                        fontSize: 18, color: AppColors.primaryColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildDropdown('Relation', StateController.stateRegion(),
                      stateController.selectedItem.call,
                      hintText: 'Family'),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Name',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Email',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxline: 1,
                    controller: pinCode,
                    labelText: 'Mobile',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.offAndToNamed('/education');
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
          )
        ],
      ),
    );
  }
}
