import 'package:flutter/material.dart';
import 'package:wellness_app/screens/chat_screen.dart';
import 'package:wellness_app/screens/community_screen.dart';
import 'package:wellness_app/screens/consulting_screen.dart';
import 'package:wellness_app/screens/home_screen.dart';
import 'package:wellness_app/theme/colors.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:wellness_app/widgets/custom_appbar.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ConsultingScreen(),
    ChatScreen(),
    CommunityScreen(),
  ];

  static const List<IconData> iconList = [
    Icons.home_filled,
    Icons.videocam_outlined,
    Icons.chat_bubble_outline,
    Icons.people_outline_outlined,
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 25.0,
            ),
            child: Column(
              children: [
                const CustomAppbar(),
                _widgetOptions.elementAt(_selectedIndex),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapLocation: GapLocation.none,
        height: 80,
        icons: iconList,
        activeIndex: _selectedIndex,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => _onItemTapped(index),
        activeColor: AppColors.primaryColor,
        inactiveColor: AppColors.darkGrayColor,
      ),
    );
  }
}
