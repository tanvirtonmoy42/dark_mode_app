import 'package:dark_mode_app/src/page/home/widget/coming_book.dart';
import 'package:dark_mode_app/src/page/home/widget/custom_app_bar.dart';
import 'package:dark_mode_app/src/page/home/widget/recommanded_book.dart';
import 'package:dark_mode_app/src/page/home/widget/trending_book.dart';
import 'package:dark_mode_app/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.settingsController})
      : super(key: key);
  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(
            settingsController: settingsController,
          ),
          ComingBook(),
          RecomandedBook(),
          TrendingBook(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  BottomNavigationBar _buildBottomNavigation() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFF6741FF),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: "Book",
            icon: Icon(Icons.menu_book_rounded),
          ),
          BottomNavigationBarItem(
            label: "Column",
            icon: Icon(Icons.view_week_outlined),
          ),
          BottomNavigationBarItem(
            label: "Person",
            icon: Icon(Icons.person_outline),
          ),
        ]);
  }
}
