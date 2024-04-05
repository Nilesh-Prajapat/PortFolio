import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:portfolio/pages/contact_up.dart';
import 'package:portfolio/pages/feedback.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/project.dart';
import 'package:portfolio/pages/skill_carousel.dart';

class NavView extends StatefulWidget {
  const NavView({super.key});

  @override
  _NavViewState createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  int _currentIndex = 2;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _currentIndex = 2;
        _pageController.jumpToPage(_currentIndex);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: SnakeNavigationBar.color(
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey.shade300,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        snakeViewColor: Colors.black,
        snakeShape: SnakeShape.circle,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_alt)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.briefcase_fill)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.hammer_fill)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail_solid)),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const[
          ContactUs(),
          project(),
          HomePage(),
          Skills(),
          FeedBack(),
        ],
      ),
    );
  }
}
