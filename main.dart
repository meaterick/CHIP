import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {"/": (context) => Homepage(),
          // "/signup": (context) => signuphome(),
          // "/login": (context) => loginhome(),
          // "/profile": (context) => profilehome(),
        }
    );
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
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                    color: Color(0xff0A3459)
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 20,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset("lib/images/school_image1.png", width: 72,height: 72,fit: BoxFit.cover,),
                        const Column(
                          children: [
                            Text(""),
                            Text("")
                          ],
                        )
                      ],
                    ),
                  ),//banner
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: const Text(
                      'Elevated Button',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
