import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
class ReusableContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  const ReusableContainer({super.key,
    required this.height,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
child: child,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
class ProjectContainer extends StatelessWidget {
  final String lang;
  final String title;
  final String about;
  final String git;
  final String? img;

  final double width;
  final double ih;
  final double iw;





  const ProjectContainer({super.key,
  required this.lang,
  required this.title,
    required this.about,
    required this.git,
    required this.width,
    required this.img,
    required this.ih,
    required this.iw,



  });

  @override
  Widget build(BuildContext context) {
    return Container(
height: 200,
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15 , 20 , 15 , 15),
        child: Column(
crossAxisAlignment:CrossAxisAlignment.start ,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              crossAxisAlignment:CrossAxisAlignment.start ,

              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,

                  children: [
                    Text(title,style: Theme.of(context).textTheme.displayLarge,),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Language: "+lang, style: Theme.of(context).textTheme.displayLarge,),
                    SizedBox(
                      height: 10,
                    ),
                    Text(about, style: Theme.of(context).textTheme.displaySmall,),
                    SizedBox(
                      height: 10,
                      
                    ),


                  ],
                ),
                SizedBox(
                  width: iw,
                ),
                Container(
                  child: img != null
                      ? Image(image: AssetImage(img!), height: ih,)
                      : null,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                _launchURL(git);
              },
              child: Row(
                children: [
                  Image(image: AssetImage("assets/project/github-mark.png"),width: 30,),

                  Image(image: AssetImage("assets/project/GitHub_Logo.png"),width: 70,),
                ],
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}

void _launchURL(String url) async {
  final Uri _github= Uri.parse(url);
  if (await launchUrl(_github,mode: LaunchMode.externalApplication)) {
    await canLaunchUrl(_github);
  } else {
    throw 'Could not launch ';
  }
}
class hireContainer extends StatelessWidget {
  final double width;
  final String skill;

  const hireContainer({super.key,
    required this.width,
    required this.skill
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(skill,style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.white
          ),),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}


