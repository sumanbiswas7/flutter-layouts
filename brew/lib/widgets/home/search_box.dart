import 'package:brew/themes/theme.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: AppThemes.colors[AppColors.textPrimary],
      ),
      decoration: InputDecoration(
        filled: true,
        focusColor: AppThemes.colors[AppColors.accent],
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: AppThemes.colors[AppColors.textSecondary],
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 4),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: "Find your coffee...",
        hintStyle: TextStyle(
          color: AppThemes.colors[AppColors.textSecondary],
        ),
        fillColor: AppThemes.colors[AppColors.card],
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 4),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
