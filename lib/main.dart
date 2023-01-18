import 'package:capsone_project_babydawn/provider/babyformprovider.dart';
import 'package:capsone_project_babydawn/screens/splashpage.dart';
import 'package:capsone_project_babydawn/screens/widgets/babyformwidet/babyform1.dart';
import 'package:capsone_project_babydawn/screens/widgets/babyformwidet/babyform2.dart';
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
        ChangeNotifierProvider(create: (context) => BabyFormProvider())
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          '/fillform1': (context) => const BabyForm1(),
          '/fillform2': (context) => const BabyForm2(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
