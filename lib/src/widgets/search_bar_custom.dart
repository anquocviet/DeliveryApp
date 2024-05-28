import 'package:flutter/material.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      padding: const WidgetStatePropertyAll(EdgeInsets.only(left: 16)),
      leading: const Icon(
        Icons.search,
        size: 28,
      ),
      hintText: 'Search',
      elevation: const WidgetStatePropertyAll(0),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }
}
