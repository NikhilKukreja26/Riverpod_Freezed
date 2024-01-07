import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_freezed/models/collections.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final immutableColl = ImmutableColl(list: []);
    // immutableColl.list.add(26);

    final mutableColl = MutableColl([]);
    mutableColl.list.add(26);
    if (kDebugMode) {
      print(mutableColl);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
      ),
    );
  }
}
