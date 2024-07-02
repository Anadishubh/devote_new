import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedText = "";
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
    final List<List> discover = [
      ["assets/images/map_mark.png", "Near By", "201"],
      ["assets/images/education_b.png", "Education", "306"],
      ["assets/images/map_mark.png", "Near By", "123"],
      ["assets/images/education_b.png", "Professional", "50"]
    ];
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Text(
                "New Matches",
                style: FontConstant.styleMedium(
                    fontSize: 17, color: AppColors.black),
              ),
              Spacer(),
              Text(
                "See All",
                style: FontConstant.styleMedium(
                    fontSize: 14, color: AppColors.primaryColor),
              )
            ],
          ),
        ),
        Container(
          // height: 291,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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

                return GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   //  selectedText = head;
                    //   selectedIndex = index;
                    // });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 5, bottom: 10, left: 10, right: 10),
                    width: 220,
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? Colors.grey.shade300
                          : Colors.white,
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Stack(children: [
                            Image.asset(
                              "$image",
                              width: 260,
                              height: 200,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(top: 180, left: 150),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white,),
                              child: SvgPicture.asset(
                                "assets/images/like.svg",
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: FontConstant.styleSemiBold(
                                    fontSize: 15,
                                    color: AppColors.primaryColor),
                              ),
                              Text(
                                qualification,
                                style: FontConstant.styleMedium(
                                    fontSize: 12, color: Colors.grey.shade800),
                              ),
                              Text(
                                "$age Yrs, $height",
                                style: FontConstant.styleMedium(
                                    fontSize: 12, color: Colors.grey.shade800),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                aadress,
                                style: FontConstant.styleMedium(
                                    fontSize: 12, color: AppColors.black),
                              )
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
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          alignment: Alignment.centerLeft,
          child: Text(
            "Discover matches based on",
            style: FontConstant.styleMedium(
                fontSize: 17, color: AppColors.black),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: discover.asMap().entries.map((entry) {
              int index = entry.key;
              String image = entry.value[0];
              String name = entry.value[1];
              String num = entry.value[2];

              //  String head = entry.value[1];

              return GestureDetector(
                onTap: () {
                  // setState(() {
                  //   //  selectedText = head;
                  //   selectedIndex = index;
                  // });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  margin: EdgeInsets.only(
                      top: 5, bottom: 10, left: 10, right: 10),
                  //   width: 210,
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Colors.grey.shade300
                        : Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.asset(
                          "$image",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0,right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: FontConstant.styleSemiBold(
                                  fontSize: 15, color: AppColors.black),
                            ),
                            Text(
                              "$num Matches",
                              style: FontConstant.styleSemiBold(
                                  fontSize: 12, color: Colors.grey),
                            ),
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
        Container(
          //  margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Text(
                "Intersted In You",
                style: FontConstant.styleMedium(
                    fontSize: 17, color: AppColors.black),
              ),
              Spacer(),
              Text(
                "See All",
                style: FontConstant.styleMedium(
                    fontSize: 14, color: AppColors.primaryColor),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
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

              return GestureDetector(
                onTap: () {
                  // setState(() {
                  //   //  selectedText = head;
                  //   selectedIndex = index;
                  // });
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: 5, bottom: 10, left: 10, right: 10),
                  //  width: 320,
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Colors.grey.shade300
                        : Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration:
                                  BoxDecoration(shape: BoxShape.circle),
                              child: ClipOval(
                                child: Image.asset(
                                  "$image",
                                  // width: 210,
                                  // height: 210,
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name,
                                      style: FontConstant.styleSemiBold(
                                          fontSize: 15,
                                          color: AppColors.primaryColor),
                                    ),
                                    Text(
                                      qualification,
                                      style: FontConstant.styleMedium(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Text(
                                      "$age Yrs, $height",
                                      style: FontConstant.styleMedium(
                                          fontSize: 12, color: Colors.grey),
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
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 1,
                        width: 280,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        width: 280,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/like.svg",
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Shortlist",
                                  style: FontConstant.styleMedium(
                                      fontSize: 11, color: AppColors.black),
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
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Chat Now",
                                  style: FontConstant.styleMedium(
                                      fontSize: 11, color: AppColors.black),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/send_icon.svg",
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Send Interest",
                                  style: FontConstant.styleMedium(
                                      fontSize: 11, color: AppColors.black),
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
        Container(
          //  margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Text(
                "Daily Recommendation",
                style: FontConstant.styleMedium(
                    fontSize: 17, color: AppColors.black),
              ),
              // Spacer(),
              // Text(
              //   "See All",
              //   style: FontConstant.styleSemiBold(
              //       fontSize: 14, color: AppColors.primaryColor),
              // )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
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

              return GestureDetector(
                onTap: () {
                  // setState(() {
                  //   //  selectedText = head;
                  //   selectedIndex = index;
                  // });
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: 5, bottom: 10, left: 10, right: 10),
                  //  width: 320,
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Colors.grey.shade300
                        : Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration:
                                  BoxDecoration(shape: BoxShape.circle),
                              child: ClipOval(
                                child: Image.asset(
                                  "$image",
                                  // width: 210,
                                  // height: 210,
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name,
                                      style: FontConstant.styleSemiBold(
                                          fontSize: 15,
                                          color: AppColors.primaryColor),
                                    ),
                                    Text(
                                      qualification,
                                      style: FontConstant.styleMedium(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Text(
                                      "$age Yrs, $height",
                                      style: FontConstant.styleMedium(
                                          fontSize: 12, color: Colors.grey),
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
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 1,
                        width: 280,
                        color: Colors.grey.shade200,
                      ),
                      Container(
                        width: 280,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/like.svg",
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Shortlist",
                                  style: FontConstant.styleMedium(
                                      fontSize: 11, color: AppColors.black),
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
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Chat Now",
                                  style: FontConstant.styleMedium(
                                      fontSize: 11, color: AppColors.black),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/send_icon.svg",
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Send Interest",
                                  style: FontConstant.styleMedium(
                                      fontSize: 11, color: AppColors.black),
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
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
          padding: EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xffE7DDF6),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile Status: 60%",
                    style: FontConstant.styleMedium(
                        fontSize: 11, color: AppColors.black),
                  ),
                  Text(
                    "Complete your profile",
                    style: FontConstant.styleMedium(
                        fontSize: 11, color: AppColors.black),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Add Details",
                  style: FontConstant.styleMedium(
                      fontSize: 11, color: AppColors.constColor),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff583689),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              )
            ],
          ),
        )
      ],
    );
  }
}
