import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MYBottomNavigation extends StatefulWidget {
  const MYBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MYBottomNavigation> createState() => _MYBottomNavigationState();
}

class _MYBottomNavigationState extends State<MYBottomNavigation> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA7C6DA),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 50,
          itemBuilder: (context, index) => const ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0),
            ),
            child: Card(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'With even to our beloved friends and lovers, we can visit a lot of places so we are here please choose us',
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textScaleFactor: 1.2,
                ),
                trailing: Icon(Icons.punch_clock_outlined, color: Colors.black),
                subtitle: Text(
                    'This is subtitle and your need to know a lot of things in flutter so man all the best for you ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
