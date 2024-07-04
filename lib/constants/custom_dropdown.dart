import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'color_constant.dart';
import 'font_constant.dart';

Widget buildDropdown(
    String? title,
    List<String> items,
    Function(String?) onChanged, {
      String? hintText,
    }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (title != null && title.isNotEmpty)
        Text(
          title,
          style: FontConstant.styleRegular(fontSize: 16, color: Colors.black),
        ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: CustomDropdown(
          decoration: CustomDropdownDecoration(
            closedBorderRadius: BorderRadius.circular(23),
            closedBorder: Border.all(color: Colors.black.withOpacity(0.5)),
            expandedFillColor: AppColors.primaryLight,
            listItemDecoration: const ListItemDecoration(
              splashColor: Colors.white,
            ),
            listItemStyle: const TextStyle(color: Colors.black),
          ),
          hintText: hintText ?? '',
          items: items,
          onChanged: onChanged,
        ),
      ),
    ],
  );
}