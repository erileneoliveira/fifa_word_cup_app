// ignore_for_file: use_build_context_synchronously

import 'package:fifa_word_cup_app/app/core/rest/custom_dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home '),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              context.get<CustomDio>().auth().get('/api/me');
            },
            child: const Text('Testando auth')),
      ),
    );
  }
}
