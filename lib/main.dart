import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dart_meu_app_simples/presentation/bindings/app_bindings.dart';
import 'package:dart_meu_app_simples/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App Completo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialBinding: AppBindings(),
      home: const HomePage(),
    );
  }
}
