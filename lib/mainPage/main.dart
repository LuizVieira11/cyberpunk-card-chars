import 'package:flutter/material.dart';
import 'package:second_screen_test/charactersPage/johnny_page.dart';
import 'package:second_screen_test/charactersPage/judy_page.dart';
import 'package:second_screen_test/charactersPage/panam_page.dart';
import 'package:second_screen_test/charactersPage/rogue_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({
    super.key,
  });

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarStyle(),
        backgroundColor: const Color.fromRGBO(255, 36, 0, 1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: ElevatedButton(
                  style: buttonsStyle(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const JudyPage();
                    }));
                  },
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Color.fromRGBO(255, 36, 0, 1),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundImage: AssetImage('images/judy.png'),
                        ),
                      ),
                      Column(
                        children: [
                          insideContainer('Judy Alvarez', context),
                          insideContainer(
                              'Best braindancer in all NC', context),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: ElevatedButton(
                  style: buttonsStyle(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PanamPage();
                    }));
                  },
                  child: Row(
                    children: [
                      Column(
                        children: [
                          insideContainer('Panam Palmer', context),
                          insideContainer(
                              'Most loyal Nomad you\'ll ever find', context),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Color.fromRGBO(255, 36, 0, 1),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundImage: AssetImage('images/panam.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: ElevatedButton(
                  style: buttonsStyle(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const JohnnyPage();
                    }));
                  },
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Color.fromRGBO(255, 36, 0, 1),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundImage: AssetImage('images/johnny.png'),
                        ),
                      ),
                      Column(
                        children: [
                          insideContainer('Johnny Silverhand', context),
                          insideContainer('Terrorist and Rock Boy', context)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: ElevatedButton(
                  style: buttonsStyle(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const RoguePage();
                    }));
                  },
                  child: Row(
                    children: [
                      Column(
                        children: [
                          insideContainer('Rogue Amendiares', context),
                          insideContainer(
                              'Best fixer with the best gigs', context),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Color.fromRGBO(255, 36, 0, 1),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundImage: AssetImage('images/rogue.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar appBarStyle() {
  return AppBar(
    title: const Text(
      'Cyberpunk Characters',
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    centerTitle: true,
    backgroundColor: const Color.fromRGBO(61, 61, 61, 1),
  );
}

AppBar appBarComeback(BuildContext context) {
  return AppBar(
    title: const Text(
      'Cyberpunk Characters',
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    centerTitle: true,
    backgroundColor: const Color.fromRGBO(61, 61, 61, 1),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
  );
}

Container insideContainer(String phrase, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 185,
    margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Color.fromRGBO(251, 254, 255, 1),
    ),
    child: Text(
      phrase,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.5,
        color: Colors.black,
      ),
    ),
  );
}

ButtonStyle buttonsStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: const Color.fromRGBO(61, 61, 61, 1),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );
}
