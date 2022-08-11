
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerr extends StatefulWidget {
  const ImagePickerr({Key? key}) : super(key: key);

  @override
  State<ImagePickerr> createState() => _ImagePickerrState();
}

class _ImagePickerrState extends State<ImagePickerr> {
  Future pickImage() async{
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(onPressed: () {}, icon:const Icon(Icons.arrow_back_ios_new),),
         title: const Text("Back")
       ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             Container(
               height: 200,
               width: double.infinity,
               margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
               decoration:  const BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(7)
                 ),
                   image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/2047905/pexels-photo-2047905.jpeg?auto=compress&cs=tinysrgb&w=600"),
                       fit: BoxFit.cover)
               ),
             ),
              Row(
                mainAxisSize:MainAxisSize.min,
                children: [
                  Expanded(
                    child: MaterialButton(
                      minWidth: 100,
                      onPressed: (){
                        setState(() {
                          pickImage();
                        });
                      },child:Row(
                      children: const [
                        Icon(Icons.camera_outlined),SizedBox(width: 15,),
                        Text("Pick Image\nfrom Gallary")
                      ],
                    ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      minWidth: 100,
                      onPressed: (){},
                      child:Row(
                        children: const [
                          Icon(Icons.image_outlined),
                          Text("Pick Image\nfrom Camera")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
