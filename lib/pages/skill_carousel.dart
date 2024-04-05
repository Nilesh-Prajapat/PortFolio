import 'package:flutter/material.dart';

import '../widgets/rcontainer.dart';

import 'package:carousel_slider/carousel_slider.dart'; // Import carousel_slider package

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Skills",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSkillCarousel([
            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image(
                      image: AssetImage("assets/icons/html.png"),
                      height: 150,
                    ),

                  ],
                ),
              ),
            ),
            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image(
                      image: AssetImage("assets/icons/css.png"),
                      height: 150,
                    ),

                  ],
                ),
              ),
            ),
            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Image(
                      image: AssetImage("assets/icons/c.png"),
                      height: 150,
                    ),

                  ],
                ),
              ),
            ),
            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image(
                      image: AssetImage("assets/icons/flutter.png"),
                      height: 150,
                    ),

                  ],
                ),
              ),
            ),

            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/kotlin.png"),
                      height: 150,
                    ),

                  ],
                ),
              ),
            ),
            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image(
                      image: AssetImage("assets/icons/js.png"),
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),
            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image(
                      image: AssetImage("assets/icons/python.png"),
                      height: 150,
                    ),

                  ],
                ),
              ),
            ),
            ReusableContainer(
              height: 425,
              width: screenWidth - 30,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Image(
                      image: AssetImage("assets/icons/firebase.png"),
                      height: 150,
                    ),

                  ],
                ),
              ),
            ),
          ]),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
  Widget _buildSkillCarousel(List<Widget> children) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 450.0,
        enlargeCenterPage: true,
        enlargeFactor: 0.5,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 500),
        viewportFraction: 0.68,
        initialPage: 0,
        scrollDirection: Axis.horizontal,
      ),
      items: children,
    );
  }
}