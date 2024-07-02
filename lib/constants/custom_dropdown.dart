import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

Widget buildDropdown({
  required String hintText,
  required items,
  required onChanged,
}) {
  return CustomDropdown<String>(

    hintText: hintText,
    items: items,
    onChanged: onChanged,
  );
}