import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentals/index.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final bool obsrcure;
  final int? maxLength;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;

  const InputTextField(
      {required this.hintText,
      required this.obsrcure,
      required this.keyboardType,
      this.controller,
      this.validator,
      this.maxLength,
      this.prefixIcon,
      this.suffixIcon,
      required this.enabled,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obsrcure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabled: enabled,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: GoogleFonts.raleway(
          textStyle: const TextStyle(
            color: AppColors.rentalBlack,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        hintText: hintText,
      ),
      maxLength: maxLength,
    );
  }
}
