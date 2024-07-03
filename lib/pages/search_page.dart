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
                  sectionTitle('Looking For'),
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
                                boxShadow: _selectedIndex == index
                                    ? [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ]
                                    : [],
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
                  const SizedBox(height: 10),
                  buildRangeSlider('Age', _startAge, _endAge, (values) {
                    setState(() {
                      _startAge = values.start;
                      _endAge = values.end;
                    });
                  }),
                  const SizedBox(height: 10),
                  buildDropdown('Height', HeightController.heightTypes(),
                      heightController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('Martial Status', MartialController.martialStatus(),
                      martialController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('Religion', ReligionController.religionStatus(),
                      religionController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('Caste', CasteController.casteStatus(),
                      casteController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('Country', CountryController.countryList(),
                      countryController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('State', StateController.stateRegion(),
                      stateController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('District/City', ReligionController.religionStatus(),
                      religionController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('Education', ReligionController.religionStatus(),
                      religionController.selectItem),
                  const SizedBox(height: 10),
                  buildDropdown('Show Profile', ReligionController.religionStatus(),
                      religionController.selectItem),
                  const SizedBox(height: 20),
                  Center(
                    child: CustomButton(
                      text: 'Search',
                      onPressed: () {
                        Get.toNamed('/searchResult');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleMedium(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
    );
  }

  Widget buildRangeSlider(String title, double start, double end, Function(RangeValues) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
        ),
        RangeSlider(
          activeColor: AppColors.primaryColor,
          values: RangeValues(start, end),
          min: 18,
          max: 60,
          divisions: 100,
          labels: RangeLabels(start.round().toString(), end.round().toString()),
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget buildDropdown(String title, List<String> items, Function(String?) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
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
            items: items,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}