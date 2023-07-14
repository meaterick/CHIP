import 'package:flutter/material.dart';

void main() {
  runApp(Home2());
}

class Home2 extends StatelessWidget {
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
              child: Text("qgwe6a40m3p5n", style: TextStyle(color: Colors.orange, fontSize: 40),)
          ),
        )
    );
  }
}