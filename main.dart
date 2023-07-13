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
        body: Container(
          color: const Color(0xff0A3459),
          child: Center(
            child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 5,
                                    height: MediaQuery.of(context).size.height / 3,
                                    child: Image.asset("lib/images/school_image1.png", width: 72,height: 72,fit: BoxFit.cover,)
                                ),
                                const Column(
                                  children: [
                                    Text("소통부터 시작하는 학교생활"),
                                    Text("Ask School")
                                  ],
                                )
                              ],
                            ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              child: const Text(
                                'Elevated Button',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
        )
    );
  }
}