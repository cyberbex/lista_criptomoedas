import 'package:flutter/material.dart';
import 'package:lista_cripto/config/app_settingns.dart';
import 'package:lista_cripto/pages/home_page.dart';
import 'package:lista_cripto/repositories/favoritas_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}
