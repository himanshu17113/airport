import 'package:flutter/material.dart';
import 'util/place.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  static const TextStyle title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const TextStyle titleLarge = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const TextStyle subTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 127, 127, 127),
  );
  static const TextStyle heading = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        primary: true,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Place(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(
                    onPressed: () => setState(() => counter = 0),
                    style: FilledButton.styleFrom(
                        foregroundColor: counter == 0 ? Colors.white : Colors.black,
                        backgroundColor: counter == 0 ? Colors.black : const Color.fromRGBO(238, 238, 238, 1),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
                    child: const Text(
                      "Transport",
                      style: TextStyle(letterSpacing: 0.2, fontSize: 12),
                    )),
                FilledButton(
                    onPressed: () => setState(() => counter = 1),
                    style: FilledButton.styleFrom(
                        foregroundColor: counter == 1 ? Colors.white : Colors.black,
                        backgroundColor: counter == 1 ? Colors.black : const Color.fromRGBO(238, 238, 238, 1),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
                    child: const Text(
                      "Terminal",
                      style: TextStyle(letterSpacing: 0.2, fontSize: 12),
                    )),
                FilledButton(
                    onPressed: () => setState(() => counter = 2),
                    style: FilledButton.styleFrom(
                        foregroundColor: counter == 2 ? Colors.white : Colors.black,
                        backgroundColor: counter == 2 ? Colors.black : const Color.fromRGBO(238, 238, 238, 1),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
                    child: const Text(
                      "Forex",
                      style: TextStyle(letterSpacing: 0.2, fontSize: 12),
                    )),
                FilledButton(
                    onPressed: () => setState(() => counter = 3),
                    style: FilledButton.styleFrom(
                        foregroundColor: counter == 3 ? Colors.white : Colors.black,
                        backgroundColor: counter == 3 ? Colors.black : const Color.fromRGBO(238, 238, 238, 1),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
                    child: const Text(
                      "Contact info",
                      style: TextStyle(letterSpacing: 0.2, fontSize: 12),
                    )),
              ],
            ),
            Card.outlined(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 2.5, bottom: 15),
                      child: Text("Taxi service", style: heading),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Wrap(
                        runSpacing: 15,
                        spacing: 0,
                        alignment: WrapAlignment.spaceBetween,
                        runAlignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          company('assets/uber.png', "\$\$\$\$", "\$\$\$"),
                          company('assets/careem.png', "\$\$\$\$", "\$\$\$"),
                          company('assets/yango.png', "\$\$\$\$", "\$\$\$"),
                          company('assets/blacklane.png', "\$\$\$\$", "\$\$\$"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Card.outlined(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(17.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 15),
                      child: Text("Public transport", style: heading),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.train),
                        Spacer(),
                        Text(
                          "Metro",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Spacer(
                          flex: 8,
                        ),
                        Text(
                          "6am - 10pm",
                          style: TextStyle(color: Color.fromRGBO(144, 144, 144, 1)),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    Divider(
                      indent: 5,
                      endIndent: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.directions_bus_outlined),
                        Spacer(),
                        Text(
                          "Bus",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Spacer(
                          flex: 8,
                        ),
                        Text(
                          "6am - 10pm",
                          style: TextStyle(color: Color.fromRGBO(144, 144, 144, 1)),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Card.outlined(
              margin: EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(17.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 15),
                      child: Text("Self Parking", style: heading),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FloatingActionButton(
                          mini: true,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          onPressed: null,
                          child: Text(
                            "T1",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(width: 20),
                        FloatingActionButton(
                          mini: true,
                          backgroundColor: Color.fromRGBO(238, 238, 238, 1),
                          foregroundColor: Colors.black,
                          onPressed: null,
                          child: Text(
                            "T2",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.two_wheeler),
                        Spacer(),
                        Text(
                          "Two Wheeler",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Spacer(
                          flex: 20,
                        ),
                        Text(
                          "AED 50 / day",
                          style: TextStyle(color: Color.fromRGBO(144, 144, 144, 1)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.info_outline_rounded,
                          size: 12,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_car_filled),
                          Spacer(),
                          Text(
                            "Car Parking",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(
                            flex: 20,
                          ),
                          Text(
                            "AED 100 / day",
                            style: TextStyle(color: Color.fromRGBO(144, 144, 144, 1)),
                          ),
                          Spacer(),
                          Icon(
                            Icons.info_outline_rounded,
                            size: 12,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.electric_car_outlined),
                        Spacer(),
                        Text(
                          " Electric Car Parking",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Spacer(
                          flex: 20,
                        ),
                        Text(
                          "AED 100 / day",
                          style: TextStyle(color: Color.fromRGBO(144, 144, 144, 1)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.info_outline_rounded,
                          size: 12,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card.outlined(
              margin: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(17.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 15),
                      child: Text("Terminal map", style: heading),
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FloatingActionButton(
                          mini: true,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          onPressed: null,
                          child: Text(
                            "T1",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(width: 20),
                        FloatingActionButton(
                          mini: true,
                          backgroundColor: Color.fromRGBO(238, 238, 238, 1),
                          foregroundColor: Colors.black,
                          onPressed: null,
                          child: Text(
                            "T2",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(width: 20),
                        FloatingActionButton(
                            mini: true,
                            backgroundColor: Color.fromRGBO(238, 238, 238, 1),
                            foregroundColor: Colors.black,
                            onPressed: null,
                            child: Text(
                              "T3",
                              style: TextStyle(fontSize: 18),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const AspectRatio(
                          aspectRatio: 3.5,
                          child: DecoratedBox(
                            // width: double.maxFinite,
                            // height: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFCCDDEC),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(image: AssetImage("assets/airport.png"), fit: BoxFit.cover)),
                          ),
                        ),
                        FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.black,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12)),
                            child: const Text(
                              "Veiw",
                              style: TextStyle(letterSpacing: 0.2, fontSize: 12),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Card.outlined(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.5, vertical: 2.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Text("Foreign exchange", style: heading),
                    ),
                    ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        childrenPadding: EdgeInsets.only(right: 50, bottom: 20),
                        shape: Border(bottom: BorderSide(width: 1.4, color: Color(0xFFE1E2E7))),
                        collapsedShape: Border(bottom: BorderSide(width: 1.4, color: Color(0xFFE1E2E7))),
                        //  shape: InputBorder.none,
                        title: Text('Travelex', style: title),
                        children: [
                          Text('Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room',
                              style: subTitle),
                        ]),
                    // Divider(
                    //   indent: 5,
                    //   endIndent: 5,
                    // ),
                    ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        childrenPadding: EdgeInsets.only(right: 50, bottom: 20),
                        shape: Border(bottom: BorderSide(width: 1.4, color: Color(0xFFE1E2E7))),
                        collapsedShape: Border(bottom: BorderSide(width: 1.4, color: Color(0xFFE1E2E7))),
                        //  shape: InputBorder.none,
                        title: Text('Al Ansari Exchange', style: title),
                        children: [
                          Text('Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room',
                              style: subTitle),
                        ]),
                    ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        childrenPadding: EdgeInsets.only(right: 50, bottom: 20),
                        shape: InputBorder.none,
                        collapsedShape: InputBorder.none,
                        title: Text('Emirates NBD', style: title),
                        children: [
                          Text('Terminal 3-Airside Dept Downtown, Concourse B,Terminal 3, beside Winston Smoking room',
                              style: subTitle),
                        ]),
                  ],
                ),
              ),
            ),
            const Card.outlined(
              margin: EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(17.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 15),
                      child: Text("Contact airport", style: heading),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Police",
                          style: titleLarge,
                        ),
                        IconButton.filled(
                            highlightColor: Color.fromRGBO(238, 238, 238, 1),
                            color: Color.fromRGBO(238, 238, 238, 1),
                            onPressed: null,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            icon: Icon(
                              Icons.call,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Divider(
                      indent: 5,
                      endIndent: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Lost and found",
                          style: titleLarge,
                        ),
                        IconButton.filled(
                            highlightColor: Color.fromRGBO(238, 238, 238, 1),
                            color: Color.fromRGBO(238, 238, 238, 1),
                            onPressed: null,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            icon: Icon(
                              Icons.call,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Divider(
                      indent: 5,
                      endIndent: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Transport",
                          style: titleLarge,
                        ),
                        IconButton.filled(
                            highlightColor: Color.fromRGBO(238, 238, 238, 1),
                            color: Color.fromRGBO(238, 238, 238, 1),
                            onPressed: null,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            icon: Icon(
                              Icons.call,
                              color: Colors.black,
                            ))
                      ],
                    ),
                    Divider(
                      indent: 5,
                      endIndent: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Head office",
                          style: titleLarge,
                        ),
                        IconButton.filled(
                            highlightColor: Color.fromRGBO(238, 238, 238, 1),
                            color: Color.fromRGBO(238, 238, 238, 1),
                            onPressed: null,
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            icon: Icon(
                              Icons.call,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(color: Colors.white),
                      iconColor: Colors.white,
                      surfaceTintColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                  icon: const Icon(Icons.directions),
                  label: const Text("Get Direction"),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(color: Colors.white),
                      iconColor: Colors.white,
                      surfaceTintColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  label: const Text("Call Support"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget company(final String name, final String blackDollar, String greyDollar) => Card(
        surfaceTintColor: Colors.white,
        elevation: 2,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              Image.asset(name),
              const SizedBox(height: 8),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: blackDollar, style: const TextStyle(color: Color.fromARGB(203, 0, 0, 0), fontSize: 12)),
                TextSpan(text: greyDollar, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ]))
            ],
          ),
        ),
      );
}
