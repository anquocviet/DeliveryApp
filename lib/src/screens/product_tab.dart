import 'package:delivery_app/src/widgets/search_bar_custom.dart';
import 'package:flutter/material.dart';

class ProductTab extends StatelessWidget {
  const ProductTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 28, left: 22, bottom: 24),
            child: const Text(
              'Vegetables',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2D0C57),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: const SearchBarCustom(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return OutlinedButton(
                    onPressed: () {},
                    child: Text('Product $index'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 8);
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/product_detail');
                    },
                    child: Card.filled(
                      color: Colors.white,
                      margin: const EdgeInsets.all(16),
                      clipBehavior: Clip.antiAlias,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              'https://picsum.photos/200/200',
                              width: 177,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 6),
                                child: Text(
                                  'Product',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF2D0C57),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 16, top: 6),
                                child: Row(
                                  children: [
                                    Text(
                                      '${(1) * 10}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF2D0C57),
                                      ),
                                    ),
                                    Text(
                                      '€ / piece',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF9586A8),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      child: SizedBox(
                                        width: 60,
                                        height: 36,
                                        child: IconButton.outlined(
                                          icon: const Icon(
                                              Icons.favorite_border_outlined),
                                          style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                      height: 36,
                                      child: IconButton.filled(
                                        icon: const Icon(
                                            Icons.shopping_cart_outlined),
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF0BCE83),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
