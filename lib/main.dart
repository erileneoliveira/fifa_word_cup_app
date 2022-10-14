import 'package:fifa_word_cup_app/app/fifa_word_cup_app.dart';
import 'package:flutter/material.dart';

import 'app/core/config/env/env.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(const FifaWordCupApp());
}
