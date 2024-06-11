import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:guestlist/colors.dart';
import 'package:guestlist/screens/home_screen.dart';
import 'package:guestlist/screens/my_passes.dart';
import 'package:guestlist/screens/profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final tabs = [
    HomePage(),
    MyPasses(),
    const Center(
        child: Text(
          'Coming Soon!',
          style: TextStyle(
            letterSpacing: -1,
            fontSize: 42,
            fontFamily: 'Spotify',
            fontWeight: FontWeight.w600,
            color: Colors.white),
    )),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        backgroundColor: Colors.black,
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, bottom: 32, top: 12),
          child: GNav(
            selectedIndex: _currentIndex,
            tabBorderRadius: 18,
            tabBackgroundGradient: const LinearGradient(
                colors: [Color.fromARGB(255, 117, 29, 132), btnBlue]),
            color: Colors.white,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(14),
            gap: 12,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
                textStyle: TextStyle(
                    fontFamily: 'Spotify',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ),
              GButton(
                icon: Icons.local_movies_rounded,
                text: 'Passes',
                textStyle: TextStyle(
                    fontFamily: 'Spotify',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              GButton(
                icon: Icons.panorama_photosphere,
                text: 'Parties',
                textStyle: TextStyle(
                    fontFamily: 'Spotify',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                textStyle: TextStyle(
                    fontFamily: 'Spotify',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              )
            ],
          ),
        ));
  }
}
