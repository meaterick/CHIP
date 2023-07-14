import 'package:flutter/material.dart';
import 'First.dart';
import 'Sec.dart';
import 'Thr.dart';
import 'package:http/http.dart' as http;

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
          "/Basic": (context) => Basic(),
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
  void callapi() async {
    final URL = Uri.parse("https://open.neis.go.kr/hub/mealServiceDietInfo?KEY=36337a8edee3490a882030df0fda8fb8&Type=json&pIndex=1&pSize=100&ATPT_OFCDC_SC_CODE=J10&SD_SCHUL_CODE=7531149& SD_SCHUL_CODE=20230714");
    final response = await http.post (
      URL, body: { 'key': 'value', }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color(0xff0A3459),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              child: Image.asset("lib/images/school_image1.png", width: 72,height: 72,fit: BoxFit.cover,)
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("소통부터 시작하는 학교생활", style: TextStyle(fontSize: 20)),
                                  Text("Ask School", style: TextStyle(fontSize: 30))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.width / 7,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Background color
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/Basic");
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}

class Basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BasicPage()
    );
  }
}
class BasicPage extends StatefulWidget {
  @override
  State<BasicPage> createState() => _BasicPage();
}
class _BasicPage extends State<BasicPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );

  final List<Widget> _widgetOptions = <Widget>[
    Home1(),
    Home2(),
    Home3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: '멘토멘티',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }
}