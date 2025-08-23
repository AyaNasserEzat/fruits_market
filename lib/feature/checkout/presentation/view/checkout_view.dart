import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  int currentStep = 0;

  final List<String> steps = [
    "Delivery Time",
    "Delivery Address",
    "Payment",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Checkout",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Timeline Header
          SizedBox(
            height: 100,
            child: Timeline.tileBuilder(
              theme: TimelineThemeData(
                direction: Axis.horizontal,
                connectorTheme: const ConnectorThemeData(color: Colors.green),
              ),
              builder: TimelineTileBuilder.connected(
                connectionDirection: ConnectionDirection.before,
                itemCount: steps.length,
                contentsAlign: ContentsAlign.basic,
                contentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    steps[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: index == currentStep ? Colors.green : Colors.grey,
                    ),
                  ),
                ),
                indicatorBuilder: (context, index) {
                  if (index == currentStep) {
                    return const DotIndicator(
                      color: Colors.green,
                      size: 30,
                    );
                  } else {
                    return const DotIndicator(
                      color: Colors.grey,
                      size: 20,
                    );
                  }
                },
                connectorBuilder: (context, index, type) =>
                    const SolidLineConnector(color: Colors.green),
              ),
            ),
          ),

          // Content for each step
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IndexedStack(
                index: currentStep,
                children: [
                  // Step 1: Delivery Time
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Select Delivery Time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      Card(
                        child: ListTile(
                          title: const Text("Now"),
                          trailing: const Icon(Icons.check_circle,
                              color: Colors.green),
                          onTap: () {},
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text("Select Date"),
                          subtitle: const Text("09 - 15 - 2021"),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),

                  // Step 2: Delivery Address
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Select Delivery Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      Card(
                        child: ListTile(
                          title: const Text("Add New Address"),
                          trailing: const Icon(Icons.add),
                          onTap: () {},
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text("Address 1"),
                          subtitle: const Text(
                              "John Doe\n+000-11-1234567\nRoom #1 - Ground Floor, Dubai"),
                          trailing: const Icon(Icons.check_circle,
                              color: Colors.green),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),

                  // Step 3: Payment
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Payment Method",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 12),
                      Card(
                        child: ListTile(
                          title: const Text("Credit Card"),
                          trailing: const Icon(Icons.credit_card),
                          onTap: () {},
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: const Text("Cash on Delivery"),
                          trailing: const Icon(Icons.money),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Bottom navigation
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.green),
              onPressed: () {
                setState(() {
                  if (currentStep < steps.length - 1) {
                    currentStep++;
                  }
                });
              },
              child: Text(
                currentStep == steps.length - 1 ? "Confirm" : "Next",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
