import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen_compoment/home_screen_body.dart';
import 'package:study_ui_flutter_tora_2/screen/profile_screen/profile_screen.dart';
import '../../header/appbar.dart';
import '../history_screen/history_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  List<Widget> tabs = [
    const BodyHome(),
    Center(
      child: Container(
        alignment: Alignment.center,
        child: const Text('Favorite'),
      ),
    ),
    const ProfileScreen(),
    const HistoryScreen(),
  ];

  bool hideBottomNavigationBarItems = false;

  List<int> pagesWithHiddenBottomNav = [2,3];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool showBottomNavigationBarItems =
        !pagesWithHiddenBottomNav.contains(_currentIndex);
    return Scaffold(
      key: _navigatorKey,
      appBar: _currentIndex == 0 ? homeAppBar(context) : null,
      body: PageView(
        controller: _pageController,
        children: tabs,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: showBottomNavigationBarItems
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: _currentIndex,
              iconSize: 31.0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
                  label: 'Home',
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.orange,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                  label: 'Favorite',
                  activeIcon: Icon(
                    Icons.favorite,
                    color: Colors.orange,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                  label: 'Profile',
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history,
                    color: Colors.grey,
                  ),
                  label: 'History',
                  activeIcon: Icon(
                    Icons.history,
                    color: Colors.orange,
                  ),
                ),
              ],
              onTap: (index) {
                setState(
                  () {
                    _currentIndex = index;
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                );
              },
              selectedItemColor: Colors.orange,
            )
          : null,
    );
  }
}
