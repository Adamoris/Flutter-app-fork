import 'package:david_app/size_config.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:david_app/backend_services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: GoogleFonts.comicNeue(),),
      ),
      body: Center(
          child: Column(
        children: [
          // SizedBox(height: 40),
          Card(
            color: const Color.fromARGB(255, 115, 182, 236),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(children: [
                Image(
                  image: AssetImage('assets/default.png'),
                  fit: BoxFit.contain,
                  width: SizeConfig.blockSizeHorizontal! * 40,
                  height: SizeConfig.blockSizeHorizontal! * 40,
                  // scale: 10,
                ),
                Text(
                  "${Authentication().user!.email}",
                  style: GoogleFonts.comicNeue(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Image(
                  image: AssetImage('assets/default.png'),
                  fit: BoxFit.contain,
                  width: SizeConfig.blockSizeHorizontal! * 20,
                  height: SizeConfig.blockSizeHorizontal! * 20,
                  // scale: 10,
                ),
                Text("asdf", style: GoogleFonts.comicNeue(),),
              ]),
              Column(children: [
                Image(
                  image: AssetImage('assets/default.png'),
                  fit: BoxFit.contain,
                  width: SizeConfig.blockSizeHorizontal! * 20,
                  height: SizeConfig.blockSizeHorizontal! * 20,
                  // scale: 10,
                ),
                Text("asdf", style: GoogleFonts.comicNeue()),
              ]),
              Column(children: [
                Image(
                  image: AssetImage('assets/default.png'),
                  fit: BoxFit.contain,
                  width: SizeConfig.blockSizeHorizontal! * 20,
                  height: SizeConfig.blockSizeHorizontal! * 20,
                  // scale: 10,
                ),
                Text("asdf", style: GoogleFonts.comicNeue(),),
              ]),
            ],
          ),
          SizedBox(height: 80),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/achievementScreen');
              },
              child: Text("Edit", style: GoogleFonts.comicNeue(fontSize: 36))),
        ],
      )),
    );
  }
}
