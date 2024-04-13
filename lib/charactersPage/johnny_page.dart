import 'package:flutter/material.dart';
import '/mainPage/main.dart';

void main() => runApp(const JohnnyPage());

class JohnnyPage extends StatelessWidget {
  const JohnnyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double reducedWidth = MediaQuery.of(context).size.width * 0.03;

    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: appBarComeback(context),
        backgroundColor: const Color.fromRGBO(255, 36, 0, 1),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const CircleAvatar(
                  backgroundColor: Color.fromRGBO(61, 61, 61, 1),
                  radius: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/images/johnny.png'),
                    radius: 90,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  margin: EdgeInsets.symmetric(
                    horizontal: reducedWidth,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(251, 254, 255, 1),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Johnny Silverhand',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: reducedWidth,
                          vertical: 15.0,
                        ),
                        child: const Text(
                          'Judy\'s story is a tale of resilience, skill, and the search for belonging in the chaotic world of Night City.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      listTileStyle(
                        title: '',
                        text: '.',
                        pad: reducedWidth,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

Padding listTileStyle(
    {required String title, required String text, required double pad}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: pad,
      vertical: 10,
    ),
    child: ExpansionTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tilePadding: EdgeInsets.symmetric(horizontal: pad),
      backgroundColor: Colors.blueGrey.shade200,
      collapsedBackgroundColor: Colors.blueGrey.shade200,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      childrenPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    ),
  );
}
