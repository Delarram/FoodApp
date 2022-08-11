import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../detailScreen/detail_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int index=0;

  final images = [
    "images/burger.jpg",
    "images/chicken_g.jpg",
    "images/chicken_f.jpeg",
    "images/pizza.jpg",
    "images/spaghetti.jpg",
  ];

  final foodsNames = [
      "Grille burger",
      "chicken fried with rice",
    "Grille chicken",
    "Pasta",
    "Pizza"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar:  Container(
      //   decoration: const BoxDecoration(
      //     color: Colors.pink,
      //     borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
      //   ),
      //   child: NavigationBarTheme(
      //     data:  NavigationBarThemeData(
      //       indicatorColor: Colors.white,
      //       labelTextStyle: MaterialStateProperty.all(
      //         const TextStyle(
      //             fontWeight:FontWeight.bold,fontSize: 14 ),
      //       ),
      //     ),
      //     child: NavigationBar(
      //       height: 65,
      //       selectedIndex: index,
      //       onDestinationSelected: (index) =>
      //           setState(() => this.index = index),
      //       backgroundColor: Colors.transparent,
      //       destinations: const [
      //         NavigationDestination(
      //             icon: Icon(Icons.home_outlined),
      //             label:'Home' ),
      //         NavigationDestination(
      //             icon: Icon(Icons.post_add),
      //             label:'guide'),
      //         NavigationDestination(
      //             icon: Icon(Icons.padding),
      //             label:'Posts' ),
      //         NavigationDestination(
      //             icon: Icon(Icons.notifications_none_outlined),
      //             label:'Notification' ),
      //         NavigationDestination(
      //             icon: Icon(Icons.account_circle_outlined),
      //             label:'Profile' ),
      //
      //       ],
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Welcome from Food app',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,

                          fontSize: 30),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: Colors.grey),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: size.height * 0.25,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      return AspectRatio(
                          aspectRatio: 0.8/1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  child: Image.asset(images[index],
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Text("${foodsNames[index]} Recipes",style: GoogleFonts.roboto(color: Colors.grey[800],fontSize: 10,fontWeight: FontWeight.bold),),
                              )
                            ],
                          )
                      );
                    },
                  )
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: size.height * 0.4,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  DetailScreen(images: images[4-index])),
                          );
                        },
                        child: AspectRatio(
                            aspectRatio: 0.8/1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Hero(
                                    child: ClipRRect(
                                      child: Image.asset(images[4-index],
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    tag: images[4-index],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Text("${foodsNames[4-index]} ",style: GoogleFonts.roboto(color: Colors.grey[800],fontSize: 16,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Text("Recipes by Food Burma",style: GoogleFonts.roboto(color: Colors.grey[800],fontSize: 10,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            )
                        ),
                      );
                    },
                  )
              ),
            ],
          ),
        ),
      ),

    );
  }
}
