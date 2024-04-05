import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FeedBack",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: screenWidth * 0.9, // Adjusted width
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Take your time and provide me your valuable feedback.",style: Theme.of(context).textTheme.headlineSmall,),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _userNameController,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            labelText: "UserName",
                            hintText: "Enter your Name",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(" ")
                          ],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            labelText: "Email",
                            hintText: "Enter your Mail",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your email';
                            } else if (!RegExp(
                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _feedbackController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter your Feedback",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your feedback';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _sendEmail();
                        _userNameController.clear();
                        _emailController.clear();
                        _feedbackController.clear();
                      }
                    },
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  final String emailAddress = "work.nilesh.pr@gmail.com";

  Future<void> _sendEmail() async {
    final String userName = _userNameController.text;
    final String email = _emailController.text;
    final String feedback = _feedbackController.text;
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'nilesh.adwork@gmail.com',
      queryParameters: {
        'subject': 'FeedBack.',
        'body': 'Name:  $userName\nEmail:  $email\nFeedback:  $feedback',
      },
    );

    try {
      await launchUrl(_emailLaunchUri);
    } catch (e) {
      print("Error launching email: $e");
    }
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _feedbackController.dispose();
    super.dispose();
  }
}
