import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginui/firebase_options.dart';
import 'package:loginui/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:loginui/src/repository/authentiation_repository/authentication_repository.dart';
import 'package:loginui/src/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.system, //thememode
        home: const WelcomeScreen());
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('.Mycaretaker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text("sub-heading", style: Theme.of(context).textTheme.titleSmall),
            Text("paragraph", style: Theme.of(context).textTheme.bodyMedium),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Eleveted button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined button"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage(""),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
