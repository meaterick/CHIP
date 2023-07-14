import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
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
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Ask School", style: TextStyle(fontSize: 35),),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xffE6E6E6),
                        radius: 35,
                        child: Icon(
                          Icons.person,
                          color: Color(0xffCCCCCC),
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.6,
                              height: MediaQuery.of(context).size.height / 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.6,
                              height: MediaQuery.of(context).size.height / 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                              ),
                            ),
                          ],
                        )
                          ],
                        )
                    ),
                ],
              ),
            ),
          ),
        )
    );
  }
}