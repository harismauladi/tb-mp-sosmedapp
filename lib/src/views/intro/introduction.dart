import 'package:flutter/material.dart';

class FindfriendsgetinspirationWidget extends StatelessWidget {
  const FindfriendsgetinspirationWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator FindfriendsgetinspirationWidget - RECTANGLE
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover)),
            child: Center(
                child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 180),
                  child: Image.asset('assets/images/logo_portait.png'),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'Find friends & get inspiration',
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'Join the community and find friends to share your interests with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'SFPro',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 60),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text('Get Started',
                        style: TextStyle(fontWeight: FontWeight.w400)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(207, 0, 123, 255),
                      minimumSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: TextButton.styleFrom(
                      minimumSize: const Size(300, 50),
                    ),
                    child: const Text('Log in',
                        style: TextStyle(fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ))));
  }
}
