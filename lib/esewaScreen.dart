import 'package:esewa/function/esewa.dart';
import 'package:flutter/material.dart';

class esewaScreen extends StatefulWidget {
  const esewaScreen({Key? key}) : super(key: key);

  @override
  State<esewaScreen> createState() => _esewaScreenState();
}

class _esewaScreenState extends State<esewaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pat with Esewa"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            "Hello this is esewa auth in flutter",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          ElevatedButton(
              onPressed: () {
                Esewa esewa = Esewa();
                esewa.pay();
              },
              child: const Text("Pay with E-sewa")),
        ],
      ),
    );
  }
}
