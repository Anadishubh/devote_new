import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:devotee_matrimony/constants/button_constant.dart';
import 'package:flutter/material.dart';
import 'package:devotee_matrimony/constants/color_constant.dart';
import 'package:devotee_matrimony/constants/font_constant.dart';
import 'package:get/get.dart';
import '../constants/profile_constant.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _selectedIndex = -1;
  double _startAge = 18;
  double _endAge = 60;

  @override
  Widget build(BuildContext context) {
    HeightController heightController = Get.put(HeightController());
    MartialController martialController = Get.put(MartialController());
    ReligionController religionController = Get.put(ReligionController());
    CasteController casteController = Get.put(CasteController());
    CountryController countryController = Get.put(CountryController());
    StateController stateController = Get.put(StateController());

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Search',
          style: FontConstant.styleSemiBold(fontSize: 18, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  bottom: screenHeight * 0.5, left: screenWidth * 0.2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg3.png'),
                  fit: BoxFit.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Looking For',
                    style: FontConstant.styleRegular(
                        fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 1,
                        childAspectRatio: 3.5,
                      ),
                      itemCount: looking.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Card(
                            color: _selectedIndex == index
                                ? AppColors.primaryLight
                                : AppColors.background,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: _selectedIndex == index
                                    ? Border.all(
                                        color: AppColors.primaryColor, width: 2)
                                    : null,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 20,
                                    child: looking[index].image,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    looking[index].gender,
                                    style: FontConstant.styleMedium(
                                        fontSize: 14,
                                        color: AppColors.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Age',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        RangeSlider(
                          activeColor: AppColors.primaryColor,
                          values: RangeValues(_startAge, _endAge),
                          min: 18,
                          max: 60,
                          divisions: 100,
                          labels: RangeLabels(_startAge.round().toString(),
                              _endAge.round().toString()),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _startAge = values.start;
                              _endAge = values.end;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Height',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Select height',
                            items: HeightController.heightTypes(),
                            onChanged: heightController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Martial Status',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Status',
                            items: MartialController.martialStatus(),
                            onChanged: martialController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Religion',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Choose',
                            items: ReligionController.religionStatus(),
                            onChanged: religionController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Caste',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Choose',
                            items: CasteController.casteStatus(),
                            onChanged: casteController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Country',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Choose',
                            items: CountryController.countryList(),
                            onChanged: countryController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'State',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Choose',
                            items: StateController.stateRegion(),
                            onChanged: stateController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'District/City',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Choose',
                            items: ReligionController.religionStatus(),
                            onChanged: religionController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Education',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Choose',
                            items: ReligionController.religionStatus(),
                            onChanged: religionController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Show Profile',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CustomDropdown(
                            decoration: const CustomDropdownDecoration(
                              expandedFillColor: AppColors.primaryLight,
                              listItemDecoration: ListItemDecoration(
                                splashColor: Colors.white,
                              ),
                              listItemStyle: TextStyle(color: Colors.black),
                            ),
                            hintText: 'Choose',
                            items: ReligionController.religionStatus(),
                            onChanged: religionController.selectItem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Search',
                    onPressed: () {
                      Get.toNamed('/searchResult');
                    },
                    color: AppColors.primaryColor,
                    textStyle: FontConstant.styleMedium(
                        fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
