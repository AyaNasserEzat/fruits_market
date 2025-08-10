import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: 'Basket'),
    );
    
  }
}