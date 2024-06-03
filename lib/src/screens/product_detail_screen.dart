import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _currentIndex = 0;
  final items = [
    'https://picsum.photos/1280/720',
    'https://picsum.photos/1281/720',
    'https://picsum.photos/1279/720',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CarouselSlider(
              items: items.map((item) {
                return Image.network(
                  item,
                  fit: BoxFit.cover,
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                aspectRatio: 16 / 12,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            Positioned(
              top: height * 0.3,
              child: Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: items.map((url) {
                    int index = items.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? const Color.fromRGBO(0, 0, 0, 0.8)
                            : const Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Positioned(
              top: 0.35 * height,
              child: Container(
                  height: height * 0.65 - 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: ListView(
                      padding: const EdgeInsets.only(top: 20),
                      children: [
                        const Text(
                          'Boston Lettuce',
                          style: TextStyle(
                              color: Color(0xFF2D0C57),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Row(
                            children: [
                              Text(
                                '1.10',
                                style: TextStyle(
                                    color: Color(0xFF2D0C57),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' € / piece',
                                style: TextStyle(
                                    color: Color(0xFF9586A8),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: const Text('~ 150 gr / piece',
                              style: TextStyle(
                                  color: Color(0xFF06BE77),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text('Spain',
                              style: TextStyle(
                                  color: Color(0xFF2D0C57),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                              'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                              style: TextStyle(
                                  color: Color(0xFF9586A8),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: height * 0.1, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 60,
                                height: 40,
                                child: IconButton.outlined(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.favorite_border_outlined),
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                child: SizedBox(
                                  width: 276,
                                  height: 40,
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.shopping_cart_outlined),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFF06BE77),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    label: const Text('ADD TO CART'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
