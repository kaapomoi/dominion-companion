import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xff121212)));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dominion companion',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Dominion companion"),
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
  int moneyCounter = 0;
  int buyCounter = 0;
  int actionCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Icon(
                  Icons.monetization_on_rounded,
                  color: Colors.yellow,
                  size: 80.0,
                ),
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        moneyCounter--;
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                Text(
                  '$moneyCounter',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        moneyCounter++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(24.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Icon(
                  Icons.shopping_cart,
                  color: Colors.brown,
                  size: 80.0,
                ),
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buyCounter--;
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                Text(
                  '$buyCounter',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buyCounter++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(24.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 80.0,
                ),
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        actionCounter--;
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                Text(
                  '$actionCounter',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        actionCounter++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(48.0)),
            SizedBox(
              width: 160.0,
              height: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    moneyCounter = 0;
                    buyCounter = 0;
                    actionCounter = 0;
                  });
                },
                child: const Text("Clear all"),
              ),
            ),
            const Padding(padding: EdgeInsets.all(24.0)),
          ],
        ),
      ),
    );
  }
}
