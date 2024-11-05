import 'package:fintech/pages/activity.dart';
import 'package:fintech/pages/home.dart';
import 'package:fintech/pages/my_card.dart';
import 'package:fintech/pages/profile.dart';
import 'package:fintech/pages/scan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fintech App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 16, 80, 50)),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List<Widget> pages = [
    const Home(),
    const MyCardPage(),
    const ScanPage(),
    const ActivityPage(),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget _tabItem(IconData icon, String label, int index) {
    return Expanded(
      child: InkWell(
        onTap: () => _onItemTapped(index),
        child: SizedBox(
          height: 50,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 24,
                color: currentIndex == index ? Theme.of(context).primaryColor : Colors.grey,
              ),
              const SizedBox(height: 2),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  color: currentIndex == index ? Theme.of(context).primaryColor : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _tabItem(Icons.home, "Home", 0),
                _tabItem(Icons.credit_card, "My Card", 1),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: FloatingActionButton(
                            onPressed: () => _onItemTapped(2),
                            elevation: 0,
                            backgroundColor: const Color.fromARGB(255, 14, 80, 98),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(
                              Icons.qr_code_scanner,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _tabItem(Icons.bar_chart, "Activity", 3),
                _tabItem(Icons.person, "Profile", 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}