import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset('images/welcome.png',
                  fit: BoxFit.contain),
            ),
            Text(
                "The Eleven",
                style: GoogleFonts.lato(fontWeight: FontWeight.bold,color: Colors.purple)
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Phone&Email",
                  style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(
                          color: Colors.black
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(13.0),
                          ),
                          borderSide: BorderSide(width: 1)),
                      fillColor: Colors.black,
                      hintText: "Enter Mobile Number",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black12),
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  child:  const TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                          color: Colors.black
                      ),
                      disabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(13.0),
                          ),
                          borderSide: BorderSide(width: 1)),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),

                      hintText: "Enter a password",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black12),
                    ),
                    obscureText: true,
                    obscuringCharacter: '#',


                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                MaterialButton(
                  child: const Text('Login'),
                  height: 43,
                  color: Colors.purple.shade300,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(onPressed: (){},
                      child: const Text("Forgotten\nPassword?",style: TextStyle(
                      ),)
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'OR',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold
                    ),

                  ),
                ),

                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: MaterialButton(
                    child: const Text('Create new account'),
                    height: 37,
                    color: Colors.yellow.shade300,
                    minWidth: 220,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    onPressed: () {},
                  ),
                ),

              ],
            ),
          ]
      ),
    );
  }
}
