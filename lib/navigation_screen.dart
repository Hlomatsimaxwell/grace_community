import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grace_community/bulletin_screen.dart';
import 'package:grace_community/giving_screen.dart';
import 'package:grace_community/people_screen.dart';
import 'package:grace_community/profile_screen.dart';
import 'package:grace_community/resources/app_colors.dart';
import 'home_screen.dart';
import 'package:grace_community/resources/app_images.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const BulletinScreen(),
    const PeopleScreen(),
    const GivingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.church, color: Colors.white),
        ),
        title: Text(
          "Grace Community",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.location_on_outlined,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      body: SafeArea(child: _screens[_currentIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(AppImages.house),
            label: 'Home',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppImages.openBook),
            label: 'Bulletin',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppImages.users),
            label: 'People',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppImages.giving),
            label: 'Giving',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(AppImages.profile),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

