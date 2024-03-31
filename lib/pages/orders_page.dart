import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Out for Delivery!',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.0), // Set the height of the subtitle
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0), // Add some padding
            child: Text(
              'Your subtitle here', // Your subtitle text
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
      body: Card(),
    );
  }
}