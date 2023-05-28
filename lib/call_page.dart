import 'dart:ui';

import 'package:contact/contact_page.dart';
import 'package:flutter/material.dart';

List a = [];

class CallPage extends StatefulWidget {
  static const String id = "call_page";
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPage();
}

class _CallPage extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background image
          Stack(
            children: [
              Image.asset(
                "assets/images/page_3/call_background_image.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black38
              ),
              BackdropFilter(filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),),

            ],
          ),
          //Main menu
          Container(
            margin: const EdgeInsets.only(top: 44, bottom: 34),
            child: Column(
              children: [
                //Icons: Chat
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 16),
                        child: Image.asset("assets/images/page_2/chat_icon.png"),
                      ),
                    ],
                  ),
                ),
                Container(height: 95),

                //User
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 146,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/user_image.png",
                      ),
                      const Text(
                        "Martha Craig",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w900, color: Colors.white),
                      ),
                      const Text(
                        "Connecting...",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 356),

                //Buttons: Microphone & Hang Up
                SizedBox(
                  width: 219,
                  height: 52,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 51,
                        width: 51,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 100),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/page_3/volume_icon.png"),
                        ),
                      ),
                      Container(
                        height: 51,
                        width: 51,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 100),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/page_2/microphone_icon.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ContactPage.id);
                        },
                        child: Container(
                          height: 51,
                          width: 51,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset("assets/images/page_2/hang_up_icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
