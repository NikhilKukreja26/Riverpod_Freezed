import 'package:flutter/material.dart';
import 'package:riverpod_freezed/models/method.dart';

class MethodPage extends StatelessWidget {
  const MethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    const method1 = Method('Method1');
    method1.printMethod();
    const method2 = Method('Method2', version: 14.0);
    method2.printMethod();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Method'),
      ),
    );
  }
}
