import 'package:flutter/material.dart';
import 'package:worm_game/modules/control_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worm Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlayScreen(),
    );
  }
}

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            Positioned(top: 20, child: _scoresBar()),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.9,
                color: Colors.white,
              ),
            ),
            Positioned(bottom: 20, child: _controlButtonsBar()),
          ],
        ),
      ),
    );
  }

  Widget _scoresBar() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Roles",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 80,
            child: const Text(
              "10",
              style: TextStyle(
                // color: C,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const Text(
            "Scores",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 80,
            child: const Text(
              "35",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }

  Widget _controlButtonsBar() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ControlButton(
            color: Colors.white,
            iconData: Icons.arrow_back,
            onTap: () {},
          ),
          ControlButton(
            color: Colors.white,
            iconData: Icons.arrow_downward,
            onTap: () {},
          ),
          ControlButton(
            color: Colors.white,
            iconData: Icons.arrow_upward,
            onTap: () {},
          ),
          ControlButton(
            color: Colors.white,
            iconData: Icons.arrow_forward,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
