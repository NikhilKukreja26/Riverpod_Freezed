import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:riverpod_freezed/models/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    const person1 =
        Person(id: 1, name: 'Nikhil', email: 'kukrejanikhil25@gmail.com');
    const person2 =
        Person(id: 1, name: 'Nikhil', email: 'kukrejanikhil25@gmail.com');
    final person3 = person1.copyWith(id: 2, email: 'nikhil@gmail.com');
    if (kDebugMode) {
      print(person1);
      print(person1 == person2);
      print(person3);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
    );
  }
}
