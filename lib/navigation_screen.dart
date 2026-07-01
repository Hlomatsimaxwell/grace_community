import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grace_community/bulletin_screen.dart';
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
      body: SafeArea(child: _screens[_currentIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations:  [
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



class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
   Widget build(BuildContext context) {
    return const Center(
      child: Text('People Screen', style: TextStyle(fontSize: 20)),
    );
  }
}

class GivingScreen extends StatelessWidget {
  const GivingScreen({super.key});

  @override
   Widget build(BuildContext context) {
    return const Center(
      child: Text('Giving Screen', style: TextStyle(fontSize: 20)),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
   Widget build(BuildContext context) {
    return const Center(
      child: Text('User Profile Screen', style: TextStyle(fontSize: 20)),
    );
  }
}