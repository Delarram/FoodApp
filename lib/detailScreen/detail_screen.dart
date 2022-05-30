import 'package:flutter/material.dart';
import 'package:foodapp/reusablewidget/resuable_text.dart';

class DetailScreen extends StatelessWidget {
  final images;
  const DetailScreen({Key? key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Hero(
              child: SizedBox(
                height: size.height * 0.55,
                child: Image.asset(
                  images,
                  fit: BoxFit.cover,
                ),
              ),
              tag: images,
            ),
            DraggableScrollableSheet(
              maxChildSize: 1,
              minChildSize: 0.6,
              initialChildSize: 0.6,
              builder: (context, controller) => SingleChildScrollView(

                child: Container(
                  height: 800,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child:Padding(

                    padding: const EdgeInsets.only(bottom: 25),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                                CustomContainer(
                                    text: "Calories",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    title: "176kcal"),
                              ],
                            ),
                          ],
                        ),const SizedBox(height: 35,),
                      ],
                    ),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
