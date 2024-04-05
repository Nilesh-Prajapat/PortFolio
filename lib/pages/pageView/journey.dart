import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:portfolio/widgets/rcontainer.dart';
class Panel2 extends StatefulWidget {
  const Panel2({super.key});

  @override
  State<Panel2> createState() => _Panel2State();
}

class _Panel2State extends State<Panel2> {
  String _journey = '';


  @override
  getJourney() async{
    String journey;
    journey = await rootBundle.loadString("assets/text_files/journey.txt");
    setState(() {
      _journey = journey;
    });
  }

  void initState() {
    super.initState();

    getJourney();

  }

  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Journey",style: Theme.of(context).textTheme.titleSmall)),
              const SizedBox(height: 20,),
              Center(child: Text(_journey , style: Theme.of(context).textTheme.bodySmall,)),
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

              Center(child: Text("Why hire me", style: Theme.of(context).textTheme.titleSmall)),
              const SizedBox(height: 20),
              hireContainer(
                  width: width - 20,
                  skill: " ● Fluent in Flutter for all-platform apps."),
              const SizedBox(height: 10),
              hireContainer(
                  width: width - 20,
                  skill: " ● Save time and money with Flutter."),
              const SizedBox(height: 10),
              hireContainer(
                  width: width - 20,
                  skill: " ● Fast app delivery using Flutter."),
              const SizedBox(height: 10),
              hireContainer(
                  width: width - 20,
                  skill: " ● Always learning, always improving."),
              const SizedBox(height: 10),
              hireContainer(
                  width: width - 20,
                  skill: " ● Seamless integration of APIs."),
              const SizedBox(height: 10),






            ],
          ),
        )
      ],
    );
  }
}
