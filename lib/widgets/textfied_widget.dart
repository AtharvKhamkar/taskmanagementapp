// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:taskmanagementapp/utils/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final double borderRadius;
  final int? maxLines;
  const TextFieldWidget(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.borderRadius,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: TextField(
        textAlign: TextAlign.center,
        maxLines: maxLines,
        controller: textController,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textHolder,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
