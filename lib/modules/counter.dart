import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pt1/app/theme/theme_constants.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  final TextEditingController _initialCounterController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _setCounter() {
    if (!_formKey.currentState!.validate()) return;
    setState(() {
      counter = int.parse(_initialCounterController.text);
      _initialCounterController.text = "";
    });
  }

  void _addOne() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _initialCounterController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onFieldSubmitted: (_) => _setCounter(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Empty value is not allowed for setting the initial counter";
                  }
                  try {
                    int.parse(value);
                    return null;
                  } catch (e) {
                    return "Something has gone wrong. Try again.";
                  }
                },
                decoration: const InputDecoration(
                  labelText: 'Initial counter',
                ),
              ),
            ),
            const SizedBox(height: defaultGap),
            ElevatedButton(
              onPressed: _setCounter,
              child: const Text('Set counter'),
            ),
            const SizedBox(height: defaultGap),
            Text(
              'Click counter: ${counter.toString()}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: defaultGap),
            ElevatedButton(
              onPressed: _addOne,
              child: const Text('Add 1 to counter'),
            ),
          ],
        ),
      ),
    );
  }
}
