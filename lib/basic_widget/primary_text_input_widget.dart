
import 'package:flutter/material.dart';

class PrimaryTextInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color? color;
  final double focusedBorderWidth;
  final double enabledBorderWidth;
  final int maxLines;
  final void Function(String?)? onChanged;

  const PrimaryTextInputWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.readOnly = false,
    this.focusedBorderWidth = 2,
    this.enabledBorderWidth = 1,
    this.maxLines = 1,
    this.color = Colors.transparent,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: TextFormField(
            maxLines: maxLines,
            readOnly: readOnly!,
            // style: CustomStyle.textStyle,
            controller: controller,
            keyboardType: keyboardType,
            validator: (String? value) {
              if (value!.isEmpty) {
                return "Please Fill Out The Field";
              } else {
                return null;
              }
            },
            onChanged: onChanged,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                    color: Colors.grey,
                    width: enabledBorderWidth),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.deepPurple, width: focusedBorderWidth),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              filled: true,
              fillColor: color,
              contentPadding: const EdgeInsets.only(
                  left: 16, right: 10, top: 20, bottom: 10),
              labelText: hintText
            ),
          ),
        )
        // CustomSize.heightBetween()
      ],
    );
  }
}
