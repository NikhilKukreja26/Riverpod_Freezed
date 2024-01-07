import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:riverpod_freezed/models/mutable_person.dart';

class MutablePersonPage extends StatelessWidget {
  const MutablePersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 =
        MutablePerson(id: 1, name: 'Nik', email: 'kukreja25@gmail.com');

    // person1.id = 2;
    person1.name = 'Nikhil';
    person1.email = 'kukrejanikhil25@gmail.com';
    final person2 =
        MutablePerson(id: 1, name: 'Nik', email: 'kukreja25@gmail.com');
    final person3 = person1.copyWith(name: 'Sanket');
    if (kDebugMode) {
      print(person1);
      print(person1 == person2);
      print(person3);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mutable Person'),
      ),
    );
  }
}
