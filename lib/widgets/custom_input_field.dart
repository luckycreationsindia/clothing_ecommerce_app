import 'package:clothing_ecommerce_app/utils/main_theme.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const CustomInputField({
    super.key,
    required this.icon,
    required this.hint,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 12),
      key: key,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: MainTheme.mainTheme.shade50,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: MainTheme.mainTheme.shade500,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: hint,
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        labelStyle: const TextStyle(fontSize: 14),
        hintStyle: const TextStyle(fontSize: 14),
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
