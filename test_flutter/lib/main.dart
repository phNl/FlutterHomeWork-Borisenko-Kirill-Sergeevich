import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = 'Имя';

  void _setName(String name) {
    setState(() {
      _name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                const Icon(
                    Icons.sentiment_neutral_rounded,
                    size: 150
                ),
                Text(
                    _name,
                    style: const TextStyle(fontSize: 24)
                )
              ],
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              width: 360,
              child: Flexible(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const Text(
                              'Очень важная информация',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                          ),
                          const Text(
                            'Здесь написана очень важная информация о важных вещах с важными аргументами и заключениями о важном. Важно.',
                            style: TextStyle(fontSize: 16)
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: Column(
                              children: [
                                const Text(
                                  'Введите новое имя и нажмите Enter',
                                  style: TextStyle(fontSize: 20),
                                ),
                                TextField(
                                  controller: TextEditingController(),
                                  onSubmitted: _setName,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Новое имя'),
                                  ),
                                )
                              ],
                            )
                          )
                        ],
                      )
                    ],
                  ),
              )
            )
          ],
        )
      )
    );
  }
}
