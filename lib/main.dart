import 'package:flutter/material.dart';
import 'package:wemanity/colors/colors.dart';
import 'package:wemanity/models/demand.dart';
import 'screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const App());
}

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wemanity',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        useMaterial3: true,
      ),
      home:HomeScreen(key: key,demand: Demand(firstName: "", lastName: "", email: "", phone:"", formations: [],companyName: "")) ,
    );
  }
}

