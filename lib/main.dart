import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/app/app.dart';

void main() async {
  //Nel caso di applicazione lanciata su Web non viene messo # nel path dell'url
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
