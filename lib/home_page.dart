import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 82, 19, 116)),
            'Taпшырма 4'),
      ),
      body: ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: WaveClipperOne(reverse: true, flip: true),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 96, 18, 138),
            // borderRadius: BorderRadius.only(
            //     //bottomRight: Radius.circular(300),
            //     //
            //     ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 100,
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 187, 233, 215),
                    shape: BoxShape.circle,
                  ),

                  // child: const Icon(
                  //   Icons.account_circle,
                  //   size: 90,
                  // ),
                  child:
                      const Image(image: AssetImage('assets/muslim-hijab.png'))
                  // child: Image.network(
                  //   'https://img.freepik.com/premium-vector/muslim-hijab-girl-work-from-home-illustration-flat-concept_445085-52.jpg',
                  //   width: 30,
                  // ),
                  ),
              const SizedBox(height: 30),
              Text(
                'Nurgul Choiubekova',
                style: GoogleFonts.berkshireSwash(
                    fontWeight: FontWeight.w300,
                    fontSize: 35,
                    color: const Color.fromARGB(255, 246, 243, 246)),
              ),
              const SizedBox(height: 5),
              Text(
                ' Flutter Developer ',
                style: GoogleFonts.rokkitt(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 235, 238, 238),
                  height: 0,
                ),
              ),
              const Divider(
                indent: 100,
                endIndent: 100,
                height: 0,
                color: Color.fromARGB(255, 227, 233, 233),
                thickness: 2,
              ),
              const SizedBox(height: 15),
              const Card(
                shape: RoundedRectangleBorder(),
                margin: EdgeInsets.all(0),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 76, 10, 107),
                    ),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                        style: TextStyle(
                            color: Color.fromARGB(255, 76, 10, 107),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                        '+996 700 47 50 78'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Card(
                shape: RoundedRectangleBorder(),
                margin: EdgeInsets.all(0),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 76, 10, 107),
                    ),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                        style: TextStyle(
                            color: Color.fromARGB(255, 76, 10, 107),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                        'nurgul.choiubekova@gmail.com'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
