import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
            50: Color(0xFFFFE200),
          })),

      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system, //thememode
      home: const AppHome(),
    );
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
