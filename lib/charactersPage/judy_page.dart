import 'package:flutter/material.dart';
import '/mainPage/main.dart';

void main() => runApp(const JudyPage());

class JudyPage extends StatelessWidget {
  const JudyPage({super.key});

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
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(61, 61, 61, 1),
                  radius: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/images/judy.png'),
                    radius: 90,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  margin: EdgeInsets.symmetric(
                    horizontal: reducedWidth,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(251, 254, 255, 1),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Judy Alvarez',
                        style: const TextStyle(
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
                        child: Text(
                          'Judy\'s story is a tale of resilience, skill, and the search for belonging in the chaotic world of Night City.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      listTileStyle(
                        title: 'Early Years',
                        text:
                            'Judy was born in Laguna Bend and raised by her grandparents after her mother\’s death. Her grandfather, a techie, taught her everything she knows.',
                        pad: reducedWidth,
                      ),
                      listTileStyle(
                        title: 'Turbulent Adolescence',
                        text:
                            'She faced mockery for being poor and parentless. At sixteen, she was wrongfully detained for “stealing” a fire truck she actually repaired',
                        pad: reducedWidth,
                      ),
                      listTileStyle(
                        title: 'Life in Night City',
                        text:
                            'Judy moved to Night City with her grandparents, who later left for Oregon. She stayed, becoming a skilled braindance technician and joining the Mox gang.',
                        pad: reducedWidth,
                      ),
                      listTileStyle(
                        title: 'Romantic Turmoil',
                        text:
                            'Judy had a tumultuous relationship with Maiko Maeda, which ended bitterly. She also formed a close bond with Evelyn Parker, whose tragic fate deeply affected her.',
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
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      childrenPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    ),
  );
}
