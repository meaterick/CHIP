import 'package:flutter/material.dart';

void main() {
  runApp(Home3());
}

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _Homeapge();
}
class _Homeapge extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
              child: Text("1")
          ),
        )
    );
  }
}