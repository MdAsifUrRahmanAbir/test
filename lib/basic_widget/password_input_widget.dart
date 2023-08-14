
import 'package:flutter/material.dart';

class PasswordInputWidget extends StatefulWidget {
  const PasswordInputWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.readOnly = false,
    this.focusedBorderWidth = 2,
    this.enabledBorderWidth = 1,
    this.color = Colors.transparent,
    this.suffixColor = Colors.black,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color? color;
  final double focusedBorderWidth;
  final double enabledBorderWidth;
  final Color? suffixColor;

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  bool isVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: TextFormField(
            readOnly: false,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            validator: (String? value) {
              if (value!.isEmpty) {
                return "Please Fill Out The Field";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.deepPurple, width: 2),
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
              fillColor: widget.color,
              contentPadding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 10),
              labelText: widget.hintText,


              suffixIcon: IconButton(
                icon: Icon(
                  isVisibility ? Icons.visibility_off : Icons.visibility,
                  color: widget.suffixColor?.withOpacity(0.78),
                  size: 18,
                ),
                color: widget.color,
                onPressed: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
              ),
            ),
            obscureText: isVisibility,
          ),
        )
      ],
    );
  }
}
