import 'package:flutter/material.dart';
import 'package:lista_cripto/config/app_settingns.dart';
import 'package:lista_cripto/pages/home_page.dart';
import 'package:lista_cripto/repositories/favoritas_repository.dart';
import 'package:provider/provider.dart';

import 'config/hive_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
