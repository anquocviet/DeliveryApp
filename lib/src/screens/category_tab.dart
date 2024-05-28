import 'dart:math';

import 'package:delivery_app/src/widgets/search_bar_custom.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({super.key});

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 28, left: 22, bottom: 24),
          child: const Text(
            'Categories',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2D0C57),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: const SearchBarCustom(),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              10,
              (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/product');
                  },
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://picsum.photos/200/200',
                          width: 200,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 6),
                          child: Text(
                            'Category $index',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2D0C57),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            '(${Random.secure().nextInt(100).toString()})',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF9586A8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ));
  }
}
