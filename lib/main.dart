import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String counter = '3';

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Initial counter',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO Add your onPressed code here!
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
                foregroundColor: WidgetStateProperty.all(Colors.white),
              ),
              child: const Text('Set counter'),
            ),
            const SizedBox(height: 24),
            Column(
              children: [
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('click counter '),
                      Text(counter),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.deepPurple),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                      onPressed: () {
                        // TODO Add your onPressed code here!
                      },
                      child: const Text('Add 1 to counter'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
