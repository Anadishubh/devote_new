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
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // String selectedText = "";
    int selectedIndex = -1;
    final List<List> matches = [
      [
        "Surbi Tiwari",
        "Software Professinal-Graduate",
        "26",
        "5ft 5 inch",
        "Knatri Hindu - Bangalore, India",
        "assets/images/girla.png"
      ],
      [
        "janvi Sharma",
        "Software Professinal-Graduate",
        "26",
        "5ft 5 inch",
        "Knatri Hindu - Bangalore, India",
        "assets/images/girlb.png"
      ],
      [
        "Surbi Tiwari",
        "Software Professinal-Graduate",
        "26",
        "5ft 5 inch",
        "Knatri Hindu - Bangalore, India",
        "assets/images/girlc.png"
      ],
      [
        "Pooja Gupta",
        "Software Professinal-Graduate",
        "26",
        "5ft 5 inch",
        "Knatri Hindu - Bangalore, India",
        "assets/images/girla.png"
      ],
      [
        "Kavita Singh",
        "Software Professinal-Graduate",
        "26",
        "5ft 5 inch",
        "Knatri Hindu - Bangalore, India",
        "assets/images/girlb.png"
      ],
      [
        "Pooja Gupta",
        "Software Professinal-Graduate",
        "26",
        "5ft 5 inch",
        "Knatri Hindu - Bangalore, India",
        "assets/images/girlc.png"
      ]
    ];
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
          "Your Search Result",
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
      body: Stack(children: [
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
        Column(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                          "Age 20 yrs - 40 yrs",
                          style: FontConstant.styleMedium(
                              fontSize: 12, color: AppColors.primaryColor),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 245, 134, 186)),
                          child: const Icon(
                            Icons.close,
                            color: AppColors.primaryColor,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
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
                            "Height: 5 feet - 7 feet",
                            style: FontConstant.styleMedium(
                                fontSize: 12, color: AppColors.primaryColor),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 245, 134, 186)),
                            child: const Icon(
                              Icons.close,
                              color: AppColors.primaryColor,
                              size: 15,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: matches.asMap().entries.map((entry) {
                    int index = entry.key;
                    String name = entry.value[0];
                    String qualification = entry.value[1];
                    String age = entry.value[2];
                    String height = entry.value[3];
                    String aadress = entry.value[4];
                    String image = entry.value[5];
                    //  String head = entry.value[1];

                    return InkWell(
                      onTap: () {
                     Get.toNamed('/profiledtls');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 5, bottom: 10, left: 10, right: 0),
                        //  width: 320,
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Colors.grey.shade300
                              : Colors.white,
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 144,
                                    width: 111,
                                    decoration:
                                        const BoxDecoration(shape: BoxShape.circle),
                                    child: ClipRRect(
                                      child: Image.asset(
                                        image,
                                        // width: 210,
                                        // height: 210,
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            name,
                                            style: FontConstant.styleSemiBold(
                                                fontSize: 15,
                                                color:
                                                    AppColors.primaryColor),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: const BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10),
                                        child: Text(
                                          qualification,
                                          style: FontConstant.styleMedium(
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Text(
                                        "$age Yrs, $height",
                                        style: FontConstant.styleMedium(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text("Created By: Myself",
                                            style: FontConstant.styleMedium(
                                                fontSize: 12,
                                                color: Colors.grey)),
                                      ),
                                      Text(
                                        aadress,
                                        style: FontConstant.styleMedium(
                                            fontSize: 12,
                                            color: AppColors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/like.svg",
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Shortlist",
                                        style: FontConstant.styleMedium(
                                            fontSize: 11,
                                            color: AppColors.black),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/chat_d.svg",
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Chat Now",
                                        style: FontConstant.styleMedium(
                                            fontSize: 11,
                                            color: AppColors.black),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/pink_search.svg",
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "View Profile",
                                        style: FontConstant.styleMedium(
                                            fontSize: 11,
                                            color: AppColors.black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
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
      ]),
    );
  }
}
