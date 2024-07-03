import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  int selectedIndex = -1;
  final List<List> matches = [
    [
      "Surbi Tiwari",
      "Software Professional - Graduate",
      "26",
      "5ft 5 inch",
      "Kshatriya Hindu - Bangalore, India",
      "assets/images/girla.png"
    ],
    [
      "Janvi Sharma",
      "Software Professional - Graduate",
      "26",
      "5ft 5 inch",
      "Kshatriya Hindu - Bangalore, India",
      "assets/images/girlb.png"
    ],
    [
      "Surbi Tiwari",
      "Software Professional - Graduate",
      "26",
      "5ft 5 inch",
      "Kshatriya Hindu - Bangalore, India",
      "assets/images/girlc.png"
    ],
    [
      "Pooja Gupta",
      "Software Professional - Graduate",
      "26",
      "5ft 5 inch",
      "Kshatriya Hindu - Bangalore, India",
      "assets/images/girla.png"
    ],
    [
      "Kavita Singh",
      "Software Professional - Graduate",
      "26",
      "5ft 5 inch",
      "Kshatriya Hindu - Bangalore, India",
      "assets/images/girlb.png"
    ],
    [
      "Pooja Gupta",
      "Software Professional - Graduate",
      "26",
      "5ft 5 inch",
      "Kshatriya Hindu - Bangalore, India",
      "assets/images/girlc.png"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Your Search Results",
          style: FontConstant.styleSemiBold(fontSize: 18, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: screenWidth * 0.2,
            child: Image.asset(
              'assets/images/bg3.png',
              fit: BoxFit.fitWidth,
              width: screenWidth * 0.6,
            ),
          ),
          Column(
            children: [
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    _buildFilterChip("Age 20 yrs - 40 yrs"),
                    const SizedBox(width: 5,),
                    _buildFilterChip("Height: 5 feet - 7 feet"),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: matches.asMap().entries.map((entry) {
                      int index = entry.key;
                      String name = entry.value[0];
                      String qualification = entry.value[1];
                      String age = entry.value[2];
                      String height = entry.value[3];
                      String address = entry.value[4];
                      String image = entry.value[5];

                      return InkWell(
                        onTap: () {
                          Get.toNamed('/profiledtls');
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? Colors.grey.shade300
                                : Colors.white,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        image,
                                        width: 130,
                                        height: 160,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                name,
                                                style: FontConstant.styleSemiBold(
                                                    fontSize: 16,
                                                    color: AppColors.primaryColor),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            qualification,
                                            style: FontConstant.styleRegular(
                                                fontSize: 14, color: Colors.grey),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "$age Yrs, $height",
                                            style: FontConstant.styleRegular(
                                                fontSize: 14, color: Colors.grey),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            address,
                                            style: FontConstant.styleRegular(
                                                fontSize: 14, color: AppColors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.grey.shade200,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildActionIcon("assets/images/like.svg",
                                        "Shortlist", AppColors.black),
                                    _buildActionIcon("assets/images/chat_d.svg",
                                        "Chat Now", AppColors.black),
                                    _buildActionIcon("assets/images/pink_search.svg",
                                        "View Profile", AppColors.black),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey.shade200),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: FontConstant.styleMedium(
              fontSize: 12,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            alignment: Alignment.center,
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 245, 134, 186),
            ),
            child: const Icon(
              Icons.close,
              color: AppColors.primaryColor,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionIcon(String iconPath, String label, Color textColor) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          height: 20,
          width: 20,
        ),
        const SizedBox(width: 3),
        Text(
          label,
          style: FontConstant.styleMedium(fontSize: 12, color: textColor),
        ),
      ],
    );
  }
}