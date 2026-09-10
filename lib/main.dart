import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Model Product
class Product {
  final String id;
  final String name;
  final String image;
  final double price;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Tạo thử 1 sản phẩm
    final product = Product(
      id: '1',
      name: 'iPhone 18',
      image: 'https://example.com/iphone.jpg',
      price: 50000000,
      description: 'Điện thoại của Apple',
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Test Product')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ID: ${product.id}', style: const TextStyle(fontSize: 18)),
              Text('Tên: ${product.name}', style: const TextStyle(fontSize: 18)),
              Text('Giá: ${product.price}', style: const TextStyle(fontSize: 18)),
              Text('Mô tả: ${product.description}', style: const TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}