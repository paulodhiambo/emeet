import 'package:flutter/material.dart';

import 'whiteboard/drawing_controller.dart';
import 'whiteboard/whiteboard.dart';

class WhiteBoardScreen extends StatefulWidget {
  const WhiteBoardScreen({Key? key}) : super(key: key);

  @override
  _WhiteBoardScreenState createState() => _WhiteBoardScreenState();
}

class _WhiteBoardScreenState extends State<WhiteBoardScreen> {
  late DrawingController controller;

  @override
  void initState() {
    controller = DrawingController();
    controller.onChange().listen((draw) {
      //do something with it
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Whiteboard(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
