import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.onChanged,
    required this.value,
  });
  
  final String value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: value),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Search announcements...',
        hintStyle: const TextStyle(color: Colors.black38, fontSize: 14),
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.search, color: Colors.black38, size: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
      ),
    );
  }
}
