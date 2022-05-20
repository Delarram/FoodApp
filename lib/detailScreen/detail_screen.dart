import 'package:flutter/material.dart';

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
                     height:  size.height * 0.55,
                child: Image.asset(images,
                  fit: BoxFit.cover,
                ),
              ),
              tag: images,
            )
          ],
        ),
      ),
    );
  }
}
