import 'package:flutter/material.dart';
import 'package:pt1/app/theme/theme_constants.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Initial counter',
                ),
              ),
              const SizedBox(height: defaultGap),
              ElevatedButton(
                onPressed: () {
                  // TODO Add your onPressed code here!
                },
                child: const Text('Set counter'),
              ),
              const SizedBox(height: defaultGap),
              const Text('click counter $counter'),
              const SizedBox(height: defaultGap),
              ElevatedButton(
                onPressed: () {
                  // TODO Add your onPressed code here!
                },
                child: const Text('Add 1 to counter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
