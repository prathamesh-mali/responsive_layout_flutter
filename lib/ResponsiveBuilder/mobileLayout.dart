import 'package:flutter/material.dart';
import 'package:responsive_design/main.dart';

class mobileLayout extends StatefulWidget {
  const mobileLayout({super.key});

  @override
  State<mobileLayout> createState() => _mobileLayoutState();
}

class _mobileLayoutState extends State<mobileLayout> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Mobile Layout"),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: size.width,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurpleAccent[200],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 310,
            child: SingleChildScrollView(
              child: SizedBox(
                height: size.height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return index == 0
                              ? Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 180, // Set a fixed height
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurpleAccent,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 20,
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 20,
                                            width: size.width * 0.7,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 20,
                                            width: size.width * 0.5,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.deepPurpleAccent[200],
                                    ),
                                    child: Text(
                                      "${index}",
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ),
                                );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
