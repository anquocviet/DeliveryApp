import 'package:flutter/material.dart';

class CartTab extends StatefulWidget {
  const CartTab({super.key});

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  var isNoneContact = false;
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
                icon: const Icon(
                  Icons.credit_card,
                  color: Color(0xFF2D0C57),
                ),
                label: const Text('**** **** **** 4747'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Delivery address",
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
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Icon(Icons.home_outlined, color: Color(0xFF2D0C57)),
                  ),
                  Text(
                    'Alexandra Smith\nCesu 31 k-2 5.st, SIA Chili\nRiga\nLV–1012\nLatvia',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Delivery options",
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
                icon: const Icon(
                  Icons.directions_walk_outlined,
                  color: Color(0xFF2D0C57),
                ),
                label: const Text('I’ll pick it up myself'),
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
                icon: const Icon(
                  Icons.directions_bike_outlined,
                  color: Color(0xFF2D0C57),
                ),
                label: const Text('By courier'),
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
                icon: const Icon(
                  Icons.airplanemode_active_outlined,
                  color: Color(0xFF2D0C57),
                ),
                label: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('By Drone'),
                    Icon(
                      Icons.check,
                      color: Color(0xFF2D0C57),
                    ),
                  ],
                ),
              ),
              SwitchListTile(
                contentPadding: const EdgeInsets.only(left: 0),
                title: const Text(
                  'Delivery options',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D0C57),
                  ),
                ),
                value: isNoneContact,
                onChanged: (bool value) => setState(() {
                  isNoneContact = value;
                }),
              ),
            ],
          ),
        ));
  }
}
