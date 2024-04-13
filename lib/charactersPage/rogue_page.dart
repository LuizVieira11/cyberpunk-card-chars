import 'package:flutter/material.dart';
import '/mainPage/main.dart';

void main() => runApp(const RoguePage());


class RoguePage extends StatelessWidget {
  const RoguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: appBarComeback(context),
          backgroundColor: const Color.fromRGBO(0, 191, 255, 1),
          body: SingleChildScrollView(
            child: Column(
              children: [
                
              ],
            ),
          ),
        ),
      )
    );
  }
}