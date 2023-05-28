import 'package:contact/video_call_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'call_page.dart';

class ContactPage extends StatefulWidget {
  static const String id = "contact_page";

  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //USER
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Row(
                children: [
                  //Button back
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, left: 10),
                      width: 40,
                      height: 40,
                      child: const Icon(
                        CupertinoIcons.back,
                        size: 35,
                      ),
                    ),
                  ),
                  //User
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              "assets/images/user_image.png",
                            ),
                          ),
                          const Text(
                            "Martha Craig",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w900),
                          ),
                          const Text(
                            "Messenger",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 40)
                ],
              ),
            ),
            //Buttons
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, CallPage.id);
                          },
                          child: Image.asset(
                            "assets/images/audio_icon.png",
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Audio",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, VideoCallPage.id);
                          },
                          child: Image.asset(
                            "assets/images/video_icon.png",
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Video",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/profile_icon.png",
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Profile",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/mute_icon.png",
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Mute",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Actions
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 156,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Color",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Image.asset("assets/images/oval_icon.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Emoji",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Image.asset("assets/images/like_icon.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Nicknames",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child:
                              Image.asset("assets/images/arrow_right_icon.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //More actions
            Container(
              margin: const EdgeInsets.only(top: 26),
              width: MediaQuery.of(context).size.width,
              height: 129,
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, top: 4),
                        child: Text(
                          "MORE ACTIONS",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Search in Conversation",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Image.asset("assets/images/search_icon.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Create group",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Image.asset("assets/images/group_icon.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Privacy
            Container(
              margin: const EdgeInsets.only(top: 26),
              width: MediaQuery.of(context).size.width,
              height: 176,
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, top: 4),
                        child: Text(
                          "MORE ACTIONS",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Notifications",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 9),
                                child: Text(
                                  "On",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                              ),
                              Image.asset("assets/images/arrow_right_icon.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Ignore Messages",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Image.asset("assets/images/planet_icon.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Block",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
