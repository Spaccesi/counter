import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    const String counter = '3';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Initial counter',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO Add your onPressed code here!
              },
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
