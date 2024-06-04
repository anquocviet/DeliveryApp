import 'package:flutter/material.dart';

class PaymentTab extends StatelessWidget {
  const PaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Credit / Debit card',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D0C57),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 374,
                    height: 240,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                        begin: Alignment.topCenter,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Positioned(
                    top: -60,
                    left: 100,
                    child: Container(
                      width: 335,
                      height: 331,
                      decoration: BoxDecoration(
                        color: const Color(0x44FFFFFF),
                        borderRadius: BorderRadius.circular(335),
                      ),
                    ),
                  ),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/mc_symbol.png'),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 25, bottom: 50, right: 12),
                          child: const Text(
                            '4747  4747  4747  4747',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'alexandra Smith'.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              '07/21',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
                iconSize: 32,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name on card'),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF9586A8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFD9D0E3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Card number'),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF9586A8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFD9D0E3),
                          ),
                        ),
                        suffixIcon: Icon(Icons.credit_card),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Expiry date'),
                        InputDatePickerFormField(
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100),
                          fieldHintText: 'MM/YY',
                          fieldLabelText: 'MM/YY',
                          onDateSubmitted: (DateTime value) {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CVC'),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF9586A8),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD9D0E3),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 8),
                child: FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xFF0ACF83)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: const Text(
                    'USE THIS CARD',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
