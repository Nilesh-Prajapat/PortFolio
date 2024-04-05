import 'package:flutter/material.dart';
import 'package:portfolio/widgets/rcontainer.dart';

class project extends StatefulWidget {
  const project({super.key});

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ProjectContainer(
                lang: "C++",
                title: "Wifi-Jammer",
                about: "Wifi-jammer made using Node-Mcu.",
                git: "https://github.com/search?q=wifi%20jammer&type=repositories",
                width: screenWidth - 40,
              img: "assets/project/nodemcu.png",
                ih: 100,
                iw: 40,
              ),
              SizedBox(
                height: 20,
              ),
              ProjectContainer(
                lang: "C++",
                title: "Home-AutoMation System",
                about: "Home-AutoMation System made using NodeMcu\nand Blynk.",
                git: "https://github.com/topics/home-automation",
                img: null,
                width: screenWidth - 40,

                ih: 100,
                iw: 0,

              ),
              SizedBox(
                height: 20,
              ),
              ProjectContainer(
                lang: "Flutter",
                title: "PortFolio App",
                about: "Cross platform portfolio app.         ",
                git: "https://github.com/HELLFIRE-NILESH/PortFolio",
                width: screenWidth - 40,
                img: "assets/icons/flutter.png",
                ih: 80,
                iw: 40,

              ),

              SizedBox(
                height: 20,
              ),
              ProjectContainer(
                lang: "C++",
                title: "Wifi-Jammer",
                about: "Wifi-jammer made using Node-Mcu.",
                git: "https://github.com/HELLFIRE-NILESH?tab=repositories",
                width: screenWidth - 40,
                img: "assets/project/nodemcu.png",
                ih: 100,
                iw: 40,

              ),
              SizedBox(
                height: 20,
              )

            ],
          ),
        ),
      ),
      ),
    );
  }
}
