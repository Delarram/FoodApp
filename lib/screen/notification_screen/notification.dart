import 'package:flutter/material.dart';


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int index = 0;
  final screens = [
    const Center(child: Text("Hell0",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),),
    const Center(child: Text("Hell0",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),),
    const Center(child: Text("Hell0",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),),
    const Center(child: Text("Hell0",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar:  Container(
        decoration: const BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
        ),
        child: NavigationBarTheme(
          data:  NavigationBarThemeData(
            indicatorColor: Colors.white,
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
      ),
    );
  }
}
