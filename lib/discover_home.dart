import 'package:cupertino_notification_bar_ui/cupertino_notification_bar_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DiscoverHome extends StatelessWidget {
  const DiscoverHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black87,
          toolbarHeight: 70,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.barsStaggered),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.sliders)),
            const SizedBox(width: 8)
          ],
          title: const CustomChip(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black87,
          items: const [
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.person, color: Colors.grey, size: 36)),
            BottomNavigationBarItem(
                label: "",
                icon:
                    Icon(Icons.groups_outlined, color: Colors.grey, size: 36)),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(FontAwesomeIcons.comment,
                    color: Colors.grey, size: 36)),
          ],
        ),
        body: const PageBody());
  }
}

class CustomChip extends StatefulWidget {
  const CustomChip({super.key});

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  var currentlySelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: Colors.grey.shade900,
      ),
      // width: 120,
      height: 48,
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 4),
            //1st
            AnimatedContainer(
              height: 40,
              width: 56,
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: currentlySelected.elementAt(0) == true
                    ? Colors.red.shade600
                    : Colors.transparent,
              ),
              child: IconButton(
                  splashColor: Colors.transparent,
                  alignment: Alignment.center,
                  onPressed: () => setState(() {
                        currentlySelected = [true, false];
                      }),
                  icon: const Icon(FontAwesomeIcons.heart)),
            ),

            //2nd
            AnimatedContainer(
              height: 40,
              width: 56,
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: currentlySelected.elementAt(1) == true
                    ? Colors.red.shade600
                    : Colors.transparent,
              ),
              child: IconButton(
                  splashColor: Colors.transparent,
                  alignment: Alignment.center,
                  onPressed: () => setState(() {
                        currentlySelected = [false, true];
                      }),
                  icon: const Icon(Icons.waving_hand_outlined)),
            ),
            const SizedBox(width: 4),
          ]),
    );
  }
}

class PageBody extends StatefulWidget {
  const PageBody({super.key});

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  final stackChildren = List.generate(
      15,
      (index) => Column(
            children: [
              Container(
                height: 675,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Samantha",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),

                    //
                    const Text(
                      "24 Years Old • Married • Alabama",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),

                    //
                    Row(
                      children: const [
                        Icon(Icons.people_outline, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "7 Common Interests",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    //
                    Row(
                      children: const [
                        Icon(FontAwesomeIcons.heart, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "Open for FWB",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    //
                    Row(
                      children: const [
                        Icon(Icons.location_on_outlined, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "2 mi away",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              )
            ],
          ));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 710,
          child: StackedList(children: stackChildren),
        ),
      ],
    );
  }
}


// Column(
//       children: [
//         Expanded(
//           child: Container(
//             padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
//             margin: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/human1.jpg"), fit: BoxFit.fill),
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.green,
//             ),
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 const Text(
//                   "Samantha Deezhuts",
//                   style: TextStyle(
//                       fontSize: 24,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 4),

//                 //
//                 const Text(
//                   "24 Years Old • Married • Alabama",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 16),

//                 //
//                 Row(
//                   children: const [
//                     Icon(Icons.people_outline, color: Colors.white),
//                     SizedBox(width: 8),
//                     Text(
//                       "7 Common Interests",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),

//                 //
//                 Row(
//                   children: const [
//                     Icon(FontAwesomeIcons.heart, color: Colors.white),
//                     SizedBox(width: 8),
//                     Text(
//                       "Open for FWB",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),

//                 //
//                 Row(
//                   children: const [
//                     Icon(Icons.location_on_outlined, color: Colors.white),
//                     SizedBox(width: 8),
//                     Text(
//                       "2 mi away",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//               ],
//             ),
//           ),
//         )
//       ],
//     );