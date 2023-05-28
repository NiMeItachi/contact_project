import 'package:contact/contact_page.dart';
import 'package:flutter/material.dart';

class VideoCallPage extends StatefulWidget {
  static const String id = "video_call_page";
  const VideoCallPage({Key? key}) : super(key: key);

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background image
          Image.asset(
            "assets/images/page_2/background_image.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.only(top: 44, bottom: 34),
            child: Column(
              children: [
                //Icons: Chat & Change Camera
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
                      Padding(
                        padding: const EdgeInsets.only(right: 20, top: 16),
                        child: Image.asset("assets/images/page_2/change_camera_icon.png"),
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
                Container(height: 296),
                
                //Effects icon
                Image.asset("assets/images/page_2/effects_icon.png"),
                Container(height: 35),

                //Buttons: Microphone & Hang Up
                SizedBox(
                  width: 135,
                  height: 51,
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
