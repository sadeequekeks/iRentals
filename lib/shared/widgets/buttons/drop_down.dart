import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropdownField extends StatelessWidget {
  final List<DropdownMenuItem> item;
  final void Function(dynamic)? onChanged;
  String? hint;
  DropdownField({
    required this.item,
    this.hint,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      width: double.infinity,
      child: DropdownButtonFormField<dynamic>(
        items: item,
        onChanged: onChanged,
        isExpanded: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          // fillColor: AppColors.bgColor,
          // filled: true,
          hintText: hint,
        ),
      ),
    );
  }
}
