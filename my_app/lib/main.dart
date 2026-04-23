import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}

// 1) StatefulWidget
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

// 2) Класс состояния
class _CounterPageState extends State<CounterPage> {
  int counter = 0; // значение счётчика

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Example')),
      // 3–7) Разметка + вывод значения
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter', // текущее значение счётчика
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            // 8) Кнопка увеличения
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++; // увеличиваем значение
                });
              },
              child: const Text('Увеличить'),
            ),
          ],
        ),
      ),
    );
  }
}
