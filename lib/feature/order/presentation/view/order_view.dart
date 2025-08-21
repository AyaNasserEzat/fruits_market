import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/app_bar.dart';
import 'package:fruits_market/feature/order/data/models/order_model.dart';
import 'package:fruits_market/feature/order/presentation/view/widgets/order_item.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: abbBar(title: 'My Order'),
      body: ListView.builder(
        itemCount: OrderModel.ordersList.length,
        itemBuilder: (context, index) {
          return OrderItem(orderModel: OrderModel.ordersList[index]);
        },
      ),
    );
  }
}
