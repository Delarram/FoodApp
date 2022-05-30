import 'package:flutter/material.dart';
import 'package:foodapp/bottomnavigation/bottom_navigation.dart';

import 'package:foodapp/screen/home_screen.dart';
import 'package:foodapp/screen/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class ConstantScreen extends StatefulWidget {
  const ConstantScreen({Key? key}) : super(key: key);

  @override
  State<ConstantScreen> createState() => _ConstantScreenState();
}

class _ConstantScreenState extends State<ConstantScreen> {
  int index= 0;
  final screens = [
    Center(child: Text("hello Punam",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 20),)),
    Center(child: Text("hello Punam",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 20),)),
    const MyHomeScreen(),
    const MYBottomNavigation(),
    const MyLogin(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar:  NavigationBarTheme(
        data:  NavigationBarThemeData(
          indicatorColor: Colors.grey,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                fontWeight:FontWeight.bold,fontSize: 14 ),
          ),
        ),
        child: NavigationBar(
          height: 65,
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() => this.index = index),
          backgroundColor: Colors.transparent,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label:'Home' ),
            NavigationDestination(
                icon: Icon(Icons.post_add),
                label:'guide'),
            NavigationDestination(
                icon: Icon(Icons.padding),
                label:'Posts' ),
            NavigationDestination(
                icon: Icon(Icons.notifications_none_outlined),
                label:'Notification' ),
            NavigationDestination(
                icon: Icon(Icons.account_circle_outlined),
                label:'Profile' ),

          ],
        ),
      ),
    );
  }
}
