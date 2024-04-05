import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pageView/abour_me.dart';
import 'pageView/journey.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  late Timer _timer;
  final _scrollController = ScrollController(); // Add ScrollController

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 20), (timer) {
      if (_controller.page == 0) {
        _controller.animateToPage(1,
            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      } else {
        _controller.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("PortFolio", style: Theme.of(context).textTheme.titleLarge),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Untitled design.png",
                  ),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.contain,
                ),
              ),
              height: 420,
              width: width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("I am,", style: Theme.of(context).textTheme.titleLarge),
                    Text("Nilesh Prajapat", style: Theme.of(context).textTheme.titleLarge),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
                      child: Text(
                        "- Cross Platform App Developer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              height: 580,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {

                        _scrollController.animateTo(
                          _scrollController.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Container(
                        height: 20,
                        width: 100,
                        child: const Center(child: Icon(Icons.keyboard_arrow_up_sharp, color: Colors.black)),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 2,
                      effect: const WormEffect(
                        activeDotColor: Colors.black,
                        dotColor: Colors.grey,
                        dotHeight: 8,
                        dotWidth: 8,
                      ),
                    ),
                    SizedBox(
                     height: 530,
                      child: PageView(
                        controller: _controller,
                        children: const [
                          Panel1(),
                          Panel2(),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
