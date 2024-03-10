import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Dubai Airport - DXB",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, letterSpacing: 0.2),
        ),
        const Text(
          "Dubai,🚩United Arab Emirates",
          style: TextStyle(fontSize: 15, color: Colors.black, letterSpacing: 0.2),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: AspectRatio(
            aspectRatio: 1.2,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage("assets/burj.jpg"), fit: BoxFit.contain)),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                      margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                      color: const Color.fromARGB(250, 255, 255, 255),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                headline(Icons.cloudy_snowing, "19 C", "Cloudy"),
                                headline(Icons.calendar_today_rounded, "30 Jan", "Mon"),
                                headline(Icons.schedule, "8:45 PM", "GMT+4"),
                                headline(CupertinoIcons.creditcard, "AED", "1\$ = 3.67AED")
                              ],
                            ),
                          ),
                          const Divider(
                            height: 0,
                            thickness: 0.8,
                            endIndent: 5,
                            indent: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.directions),
                                    label: const Text(
                                      "Get Direction",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  const VerticalDivider(
                                    width: 6,
                                    // width: 50,
                                    thickness: 0.8,
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.call),
                                    label: const Text(
                                      "Call Support",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
          ),
        )
      ],
    );
  }

  Widget headline(final IconData? icon, final String main, final String sub) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.black,
        ),
        Text(
          main,
          style: const TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        Text(
          sub,
          style: const TextStyle(
            fontSize: 12,
            color: Color.fromRGBO(144, 144, 144, 1),
          ),
        )
      ],
    );
  }
}
