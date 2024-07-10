import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:devotee_matrimony/constants/CustomTextFeild.dart';
import 'package:devotee_matrimony/constants/profile_constant.dart';
import 'package:devotee_matrimony/constants/button_constant.dart';
import 'package:devotee_matrimony/constants/color_constant.dart';
import 'package:devotee_matrimony/constants/custom_dropdown.dart';
import 'package:devotee_matrimony/constants/font_constant.dart';

class FamilyPage extends StatefulWidget {
  const FamilyPage({super.key});

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  ReligionController religionController = Get.put(ReligionController());
  CasteController casteController = Get.put(CasteController());
  StateController stateController = Get.put(StateController());
  int? selectedValue;
  int? selectedValue1;
  int? selectedValue2;
  List<String> languages = [
    'Hindi',
    'Bengali',
    'Telugu',
    'Marathi',
    'Tamil',
    'Gujarati',
    'Kannada',
    'Odia',
    'Malayalam',
    'Punjabi',
    'Assamese',
    'Urdu'
  ];
  bool showAll = false;
  Set<String> selectedLanguages = {};

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      buildDropdown(
                        'Religion',
                        ReligionController.religionStatus(),
                        religionController.selectedItem.call,
                        hintText: 'Hindu',
                      ),
                      const SizedBox(height: 15),
                      buildDropdown(
                        'Caste',
                        CasteController.casteStatus(),
                        casteController.selectedItem.call,
                        hintText: 'Rajput',
                      ),
                      const SizedBox(height: 15),
                      buildDropdown(
                        'Sub caste',
                        CasteController.casteStatus(),
                        casteController.selectedItem.call,
                        hintText: 'Rathore',
                      ),
                      const SizedBox(height: 15),
                      const CustomTextField(labelText: 'Gotra'),
                      const SizedBox(height: 15),
                      Text(
                        'Languages known',
                        style: FontConstant.styleRegular(
                            fontSize: 16, color: Colors.black),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 130,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 29 / 6,
                          ),
                          itemCount: showAll ? languages.length : 6,
                          itemBuilder: (context, index) {
                            if (!showAll && index == 5) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showAll = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.plus,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text('More'),
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              String language = languages[index];
                              bool isSelected =
                                  selectedLanguages.contains(language);
                              return GestureDetector(
                                onTap: () {
                                  setState(
                                    () {
                                      if (isSelected) {
                                        selectedLanguages.remove(language);
                                      } else {
                                        selectedLanguages.add(language);
                                      }
                                    },
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.transparent,
                                    border: Border.all(
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.grey,
                                        width: 1.0),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 0.2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (isSelected)
                                          const Icon(
                                            CupertinoIcons.checkmark_alt,
                                            size: 20,
                                            color: AppColors.primaryColor,
                                          ),
                                        if (isSelected) const SizedBox(),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 40.0),
                                          child: Text(
                                            language,
                                            style: FontConstant.styleRegular(
                                                fontSize: 16,
                                                color: isSelected
                                                    ? AppColors.primaryColor
                                                    : AppColors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Mother tongue',
                        ReligionController.religionStatus(),
                        religionController.selectedItem.call,
                        hintText: 'Hindu',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const CustomTextField(
                        labelText: 'Exact time of birth',
                        hintText: '14:30',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'State of birth',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'Dehli',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'City of birth',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'Select',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Father alive',
                        style: FontConstant.styleRegular(
                            fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Yes'),
                              activeColor: AppColors.primaryColor,
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(
                                  () {
                                    selectedValue = value;
                                  },
                                );
                              },
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
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
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: 'Father full name',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Occupation',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'Select',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        labelText: 'What kind of bussiness',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Annual turnover',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'INR 0-1 lakhs',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Annual income range',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'INR 0-1 lakhs',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Mother alive',
                        style: FontConstant.styleRegular(
                            fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Yes'),
                              activeColor: AppColors.primaryColor,
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(
                                  () {
                                    selectedValue = value;
                                  },
                                );
                              },
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
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
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: 'Mother full name',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Occupation',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'Select',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Employee',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'Private sector',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Annual income range',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: 'INR 0-1 lakhs',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Sister',
                        style: FontConstant.styleRegular(
                            fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Yes'),
                              activeColor: AppColors.primaryColor,
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(
                                  () {
                                    selectedValue = value;
                                  },
                                );
                              },
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
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
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Number of elder sisters',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: '0',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Number of younger sisters',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: '0',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Number of married sisters',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: '0',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Brother',
                        style: FontConstant.styleRegular(
                            fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Yes'),
                              activeColor: AppColors.primaryColor,
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(
                                  () {
                                    selectedValue = value;
                                  },
                                );
                              },
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
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
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Number of elder brothers',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: '0',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Number of younger brothers',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: '0',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'Number of married brothers',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: '0',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        decoration: const BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Family type',
                        style: FontConstant.styleRegular(
                            fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Joint'),
                              activeColor: AppColors.primaryColor,
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(
                                  () {
                                    selectedValue = value;
                                  },
                                );
                              },
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Nuclear'),
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
                      SizedBox(
                        height: 15,
                      ),
                      buildDropdown(
                        'How many members',
                        StateController.stateRegion(),
                        stateController.selectedItem.call,
                        hintText: '0',
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Family value',
                            style: FontConstant.styleRegular(
                                fontSize: 16, color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: RadioListTile<int>(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Text('Traditional'),
                                  activeColor: AppColors.primaryColor,
                                  value: 1,
                                  groupValue: selectedValue1,
                                  onChanged: (int? value) {
                                    setState(
                                      () {
                                        selectedValue1 = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: RadioListTile<int>(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Text('Moderate'),
                                  activeColor: AppColors.primaryColor,
                                  value: 2,
                                  groupValue: selectedValue1,
                                  onChanged: (int? value) {
                                    setState(
                                      () {
                                        selectedValue1 = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            flex: 0,
                            child: RadioListTile<int>(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Liberal'),
                              activeColor: AppColors.primaryColor,
                              value: 3,
                              groupValue: selectedValue1,
                              onChanged: (int? value) {
                                setState(
                                  () {
                                    selectedValue1 = value;
                                  },
                                );
                              },
                            ),
                          ),
                          Text(
                            'Affluence level',
                            style: FontConstant.styleRegular(
                                fontSize: 16, color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: RadioListTile<int>(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Text('Affluent'),
                                  activeColor: AppColors.primaryColor,
                                  value: 1,
                                  groupValue: selectedValue2,
                                  onChanged: (int? value) {
                                    setState(
                                          () {
                                        selectedValue2 = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: RadioListTile<int>(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Text('Lower middle'),
                                  activeColor: AppColors.primaryColor,
                                  value: 2,
                                  groupValue: selectedValue2,
                                  onChanged: (int? value) {
                                    setState(
                                          () {
                                        selectedValue2 = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: RadioListTile<int>(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Text('Middle class'),
                                  activeColor: AppColors.primaryColor,
                                  value: 3,
                                  groupValue: selectedValue2,
                                  onChanged: (int? value) {
                                    setState(
                                          () {
                                        selectedValue2 = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: RadioListTile<int>(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Text('Upper class'),
                                  activeColor: AppColors.primaryColor,
                                  value: 4,
                                  groupValue: selectedValue2,
                                  onChanged: (int? value) {
                                    setState(
                                          () {
                                        selectedValue2 = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
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
