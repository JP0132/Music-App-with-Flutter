import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  final inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade800.withOpacity(0.8),
              Colors.deepPurple.shade200.withOpacity(0.8),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade800,
          elevation: 0,
          title: Text(
            "TuneUp",
            textAlign: TextAlign.left,
            style: GoogleFonts.pacifico(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 28,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(65.0),
            child: BottomNavyBar(
              backgroundColor: Colors.deepPurple.shade800,
              containerHeight: 60.0,
              selectedIndex: _currentindex,
              onItemSelected: (index) {
                setState(() {
                  this._currentindex = index;
                });
              },
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(Icons.apps_outlined),
                  title: Text("Home"),
                  textAlign: TextAlign.center,
                  activeColor: Colors.white,
                  inactiveColor: inactiveColor,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.playlist_play_rounded),
                  title: Text("Playlist"),
                  textAlign: TextAlign.center,
                  activeColor: Colors.white,
                  inactiveColor: inactiveColor,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.text_rotate_vertical_outlined),
                  title: Text("Tracks"),
                  textAlign: TextAlign.center,
                  activeColor: Colors.white,
                  inactiveColor: inactiveColor,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.settings),
                  title: Text("Settings"),
                  textAlign: TextAlign.center,
                  activeColor: Colors.white,
                  inactiveColor: inactiveColor,
                ),
              ],
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
