import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(24),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.account_circle,
              size: 100, color: Color.fromARGB(255, 76, 184, 206)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Arya Wicaksana Hidayat",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 239, 240, 246)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nim: 2141720207",
                      style: TextStyle(fontSize: 16, color: Colors.grey))
                ],
              ),
            ],
          ))
        ],
      ),
    );

    Widget contactSection = const Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // margin kanan 20
        Padding(
          padding: EdgeInsets.only(right: 40),
        ),
        Text("Sidoarjo, ",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 245, 243, 243))),
        Text("087245323452",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 245, 243, 243)))
      ],
    );

    Widget iconSection = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.pedal_bike_sharp, color: Colors.red),
          Icon(Icons.watch, color: Colors.green),
          Icon(Icons.phone_android, color: Colors.blue),
          Icon(Icons.handyman, color: Colors.amber),
        ],
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 199, 184, 224)),
      ),
      home: ListView(children: [
        titleSection,
        contactSection,
        iconSection,
      ]),
    );
  }
}
