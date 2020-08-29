import 'package:flutter/material.dart';
import 'package:netfix_app_new/screens/home_screen.dart';
import 'package:netfix_app_new/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(key: PageStorageKey('homeScreen')),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  var _currentIndex = 0;

  Map<String, IconData> _icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Coming Soon': Icons.queue_play_next,
    'Downloads': Icons.file_download,
    'More': Icons.menu,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: !Responsive.isDesktop(context)
          ? BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: _icons
                  .map(
                    (title, icon) => MapEntry(
                      title,
                      BottomNavigationBarItem(
                        title: Text(title),
                        icon: Icon(icon, size: 30),
                      ),
                    ),
                  )
                  .values
                  .toList(),
              currentIndex: _currentIndex,
              selectedItemColor: Colors.white,
              selectedFontSize: 11,
              unselectedItemColor: Colors.grey,
              unselectedFontSize: 11,
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
            )
          : null,
    );
  }
}
