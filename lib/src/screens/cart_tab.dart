import 'package:flutter/material.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Checkout'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payment method",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D0C57),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.transparent),
                      foregroundColor:
                          WidgetStateProperty.all(const Color(0xFF2D0C57)),
                    ),
                    child: const Text('CHANGE'),
                  )
                ],
              ),
              FilledButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.transparent),
                  iconColor: WidgetStateProperty.all(const Color(0xFF000000)),
                  foregroundColor:
                      WidgetStateProperty.all(const Color(0xFF9586A8)),
                  padding: WidgetStateProperty.all(const EdgeInsets.all(0)),
                ),
                icon: const Icon(Icons.credit_card),
                label: const Text('**** **** **** 4747'),
              )
            ],
          ),
        ));
  }
}
