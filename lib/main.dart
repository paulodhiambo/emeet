import 'package:emeet/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EMeet());
}

class EMeet extends StatelessWidget {
  const EMeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
