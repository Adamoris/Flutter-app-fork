import 'package:david_app/size_config.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:david_app/backend_services/auth.dart';
import 'package:david_app/shared/singleton.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final Singleton _singleton = Singleton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.comicNeue(),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          // SizedBox(height: 40),
          SizedBox(
            width: SizeConfig.blockSizeHorizontal! * 100,
            child: Card(
              color: const Color.fromARGB(255, 115, 182, 236),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(children: [
                  Stack(alignment: Alignment.center, children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal! * 40 + 20,
                      height: SizeConfig.blockSizeHorizontal! * 40 + 20,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 45, 41, 43),
                          shape: BoxShape.circle),
                    ),
                    Image(
                      image: AssetImage(
                          'assets/profiles/${(_singleton.userData != null) ? _singleton.userData!["profile"].toString() : "default.png"}'),
                      fit: BoxFit.contain,
                      width: SizeConfig.blockSizeHorizontal! * 40,
                      height: SizeConfig.blockSizeHorizontal! * 40,
                      // scale: 10,
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${Authentication().user!.email}",
                    style: GoogleFonts.comicNeue(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Image(
                  image: AssetImage(
                      'assets/achievements/${(_singleton.userData != null) ? _singleton.userData!["achievements"]["active"][0] : "empty"}.png'),
                  fit: BoxFit.contain,
                  width: SizeConfig.blockSizeHorizontal! * 20,
                  height: SizeConfig.blockSizeHorizontal! * 20,
                  // scale: 10,
                ),
                Text(
                  (_singleton.userData != null)
                      ? "${_singleton.achievementDescriptions[_singleton.userData!['achievements']['active'][0]]}"
                      : "",
                  style: GoogleFonts.comicNeue(),
                ),
              ]),
              Column(children: [
                Image(
                  image: AssetImage(
                      'assets/achievements/${(_singleton.userData != null) ? _singleton.userData!["achievements"]["active"][1] : "empty"}.png'),
                  fit: BoxFit.contain,
                  width: SizeConfig.blockSizeHorizontal! * 20,
                  height: SizeConfig.blockSizeHorizontal! * 20,
                  // scale: 10,
                ),
                Text(
                    (_singleton.userData != null)
                        ? "${_singleton.achievementDescriptions[_singleton.userData!['achievements']['active'][1]]}"
                        : "",
                    style: GoogleFonts.comicNeue()),
              ]),
              Column(children: [
                Image(
                  image: AssetImage(
                      'assets/achievements/${(_singleton.userData != null) ? _singleton.userData!["achievements"]["active"][2] : "empty"}.png'),
                  fit: BoxFit.contain,
                  width: SizeConfig.blockSizeHorizontal! * 20,
                  height: SizeConfig.blockSizeHorizontal! * 20,
                  // scale: 10,
                ),
                Text(
                  (_singleton.userData != null)
                      ? "${_singleton.achievementDescriptions[_singleton.userData!['achievements']['active'][2]]}"
                      : "",
                  style: GoogleFonts.comicNeue(),
                ),
              ]),
            ],
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 30),
          // TextButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, '/achievementScreen');
          //     },
          //     child: Text("Edit", style: GoogleFonts.comicNeue(fontSize: 36))),
          SizedBox(
              width: SizeConfig.blockSizeHorizontal! * 95,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/achievementScreen');
                  },
                  child: const Text('Edit',
                      style: TextStyle(fontSize: 30)))), //general screen
        ],
      )),
    );
  }
}
