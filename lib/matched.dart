import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinderlitegg/utils.dart';

class MatchedScreen extends StatelessWidget {
  const MatchedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          actions: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.grey.withOpacity(0.15),
              child: IconButton(
                splashRadius: 24,
                onPressed: () {},
                icon: const Icon(Icons.close, size: 28),
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 16)
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Center(
                      child: Text("You and Samantha have matched!",
                          textAlign: TextAlign.center, style: primaryText),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text("Spark the conversation up!",
                          textAlign: TextAlign.center, style: secondaryText),
                    ),
                  ],
                ),
              ),

              //avatars
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                          radius: 96,
                          backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1148&q=80",
                          )),
                      CircleAvatar(
                          radius: 96,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red.shade600,
                    radius: 40,
                    child: const Icon(
                      FontAwesomeIcons.heartCircleBolt,
                      size: 40,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "You have 24 hours to establish a connection. If you do not, you can always purchase a membership to reconnect.",
                  textAlign: TextAlign.center,
                  style: secondaryText.copyWith(fontSize: 15),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 16)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red.shade600)),
                        child: const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "Send a Message",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ))),
                    const SizedBox(height: 12),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 16)),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.grey.withOpacity(0.15))),
                        child: const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "Talk Later",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white70),
                            ))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
