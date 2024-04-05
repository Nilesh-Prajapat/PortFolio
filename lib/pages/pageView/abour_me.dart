import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:portfolio/widgets/rcontainer.dart';
import 'package:timelines/timelines.dart';



class Panel1 extends StatefulWidget {
  const Panel1({Key? key}) : super(key: key);

  @override
  State<Panel1> createState() => _Panel1State();
}

class _Panel1State extends State<Panel1> {
  String _about = '';

  @override
  void initState() {
    super.initState();
    getAbout();
  }

  Future<void> getAbout() async {
    String aboutMe = await rootBundle.loadString("assets/text_files/about.txt");
    setState(() {
      _about = aboutMe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("About me", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 20),
              const CircleAvatar(backgroundImage: AssetImage("assets/360_F_631546389_9Ip7mK7WJB3iUNrveuLnaJWxEmemZPAI.jpg"), radius: 30),
              const SizedBox(height: 20),
              Text(_about, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 15),
              Container(

                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1,
                            color: Colors.black
                        )
                    )
                ),
              ),
              const SizedBox(height: 10),

              Text("Education", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 10),
              TimelineTile(
                contents: Text('\nToppers Academy\nUjjain',style: Theme.of(context).textTheme.bodySmall,),
                oppositeContents: Container(

                  child: Text('10th',style: Theme.of(context).textTheme.labelMedium,),
                ),
                node: TimelineNode(
                  position: 0.5,
                  indicatorPosition: 0.5,

                  indicator: DotIndicator(
                    color: Colors.black,
                  ),
                  startConnector: SolidLineConnector(
                    color: Colors.black,

                    space: 50,
                  ),
                  endConnector: SolidLineConnector(
                    color: Colors.black,
                  ),
                ),
              ),
              TimelineTile(
                contents: Text('\n\nGovernment polytechnic college\nDewas',style: Theme.of(context).textTheme.bodySmall,),
                oppositeContents: Container(

                  child: Text('Diploma',style: Theme.of(context).textTheme.labelMedium,),
                ),
                node: TimelineNode(
                  position: 0.5,
                  indicatorPosition: 0.5,

                  indicator: DotIndicator(
                    color: Colors.black,

                  ),
                  startConnector: SolidLineConnector(
                    space: 50,
                    color: Colors.black,
                  ),
                  endConnector: SolidLineConnector(
                    color: Colors.black,

                  ),
                ),
              ),
              TimelineTile(
                contents: Text('\n\nUniversal Informatics\nIndore\n',style: Theme.of(context).textTheme.bodySmall,),
                oppositeContents: Container(

                  child: Text('Internship',style: Theme.of(context).textTheme.labelMedium,),
                ),
                node: TimelineNode(
                  position: 0.5,
                  indicatorPosition: 0.5,
                  indicator: DotIndicator(
                    color: Colors.black,
                  ),
                  startConnector: SolidLineConnector(
                    space: 50,
                    color: Colors.black,

                  ),
                  endConnector: SolidLineConnector(
                    color: Colors.black,

                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
