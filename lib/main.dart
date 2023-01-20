import 'package:capsone_project_babydawn/provider/babyformprovider.dart';
import 'package:capsone_project_babydawn/provider/searchprovider.dart';
import 'package:capsone_project_babydawn/screens/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BabyFormProvider()),
        ChangeNotifierProvider(create: (context) => SearchProvider())
      ],
      child: const MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
