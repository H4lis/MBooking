import 'package:flutter/material.dart';
import 'package:mbooking/pages/home_page.dart';
import 'package:mbooking/pages/movie_page.dart';
import 'package:mbooking/pages/profile_page.dart';
import 'package:mbooking/pages/ticket_page.dart';
import 'package:mbooking/shared/theme.dart';
import 'package:mbooking/widgets/bottom_navigation_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    TicketPage(),
    MoviePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: blackColor,
      bottomNavigationBar: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
