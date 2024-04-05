import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final String emailAddress = "work.nilesh.pr@gmail.com";

  Future<void> _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'nilesh.adwork@gmail.com',
      queryParameters: {
        'subject': 'Have some ideas regarding Projects.',
      },
    );

    try {
      await launchUrl(_emailLaunchUri);
    } catch (e) {
      print("Error launching email: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Me",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: screenWidth - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Meet Me",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "+ 91 9340236043",
                              style: Theme.of(context).textTheme.displayMedium,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "its.nilesh.here",
                              style: Theme.of(context).textTheme.displayMedium,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "32/2 Arjun Nagar, Dewas, [M.P]",
                              style: Theme.of(context).textTheme.displayMedium,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 310,
                  width: screenWidth - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pitch Me",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Hello,",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Schyler",
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
              Text("If you want to discuss anything regarding any project, you can contact me on my e-mail or social media.",style: Theme.of(context).textTheme.displayMedium,),
                        const SizedBox(height: 20),
                       Row(
                         children: [
                           IconButton(
                               onPressed: () {
                                 _launchURL("https://www.instagram.com/its.nilesh.here/");
                               },
                               icon: const Image(image: AssetImage("assets/icons/insta.png"),height: 40,)
                           ),
                           const SizedBox(
                             width: 5,
                           ),
                           IconButton(
                               onPressed: () {
                                 _launchURL("https://github.com/HELLFIRE-NILESH");
                               },
                               icon: const Image(image: AssetImage("assets/icons/github-mark-white.png"),height: 40,)
                           ),
                           const SizedBox(
                             width: 5,
                           ),
                           IconButton(
                               onPressed: () {
                                 _sendEmail();
                               },
                               icon: const Icon(CupertinoIcons.mail,size: 42,)
                           ),

                         ],
                       )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
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
void _launchURL(String url) async {
  final Uri _surl= Uri.parse(url);
  if (await launchUrl(_surl,mode: LaunchMode.externalApplication)) {
    await canLaunchUrl(_surl);
  } else {
    throw 'Could not launch ';
  }
}