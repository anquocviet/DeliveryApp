import 'package:delivery_app/src/screens/category_tab.dart';
import 'package:delivery_app/src/screens/product_detail_screen.dart';
import 'package:delivery_app/src/screens/product_tab.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Navigator(onGenerateRoute: (setting) {
      WidgetBuilder builder;
      switch (setting.name) {
        case '/':
          builder = (context) => const CategoryTab();
          break;
        case '/product':
          builder = (context) => const ProductTab();
          break;
        case '/product_detail':
          builder = (context) => const ProductDetailScreen();
        // Navigator.pushNamed(context, '/product_detail');
        default:
          throw UnimplementedError('Unknown route: ${setting.name}');
      }
      return MaterialPageRoute(builder: builder, settings: setting);
    }));
  }
}
