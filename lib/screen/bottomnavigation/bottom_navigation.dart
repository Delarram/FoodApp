import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/screen/detailScreen/detail_screen.dart';
import 'package:foodapp/screen/home_screen/home_screen.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<BottomNavigation> {
  int index = 0;
  final screens = [
      MyHomeScreen(),
    DetailScreen(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: screens[index],
      bottomNavigationBar:  NavigationBarTheme(
        data:  NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
                fontWeight:FontWeight.bold,fontSize: 14.sp,color: const Color(0xff828282)),
          ),
        ),
        child:  NavigationBar(
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
