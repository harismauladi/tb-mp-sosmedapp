import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        height: double.infinity,
        child: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
          padding: const EdgeInsets.only(left: 30, right: 30),
          height: 600,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ]),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chat',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.menu, color: Colors.grey)
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: ProfilePicture(
                          name: 'Ridwan',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('Ridwan'),
                        subtitle: Text('Ridwan : Hello, how are you?'),
                        trailing: Text('10:00'),
                      ),
                      ListTile(
                        leading: ProfilePicture(
                          name: 'M Touriq',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('M Touriq'),
                        subtitle: Text('You : Yes, I Do'),
                        trailing: Text('12:51'),
                      ),
                      ListTile(
                        leading: ProfilePicture(
                          name: 'Rahmat Alvian',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('Rahmat Alvian'),
                        subtitle: Text('Rahmat Alvian : May I Hel..'),
                        trailing: Text('08:38'),
                      ),
                      ListTile(
                        leading: ProfilePicture(
                          name: 'Melisa Amelia',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('Melisa Amelia'),
                        subtitle: Text('You : Im Good, Thanks!'),
                        trailing: Text('18:20'),
                      ),
                      ListTile(
                        leading: ProfilePicture(
                          name: 'Han So Hee',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('Han So Hee'),
                        subtitle: Text('Han So Hee : Hi, Darling'),
                        trailing: Text('18:22'),
                      ),
                      ListTile(
                        leading: ProfilePicture(
                          name: 'Gintoki',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('Gintoki'),
                        subtitle: Text('You : What\'s Up?'),
                        trailing: Text('12:30'),
                      ),
                      ListTile(
                        leading: ProfilePicture(
                          name: 'Zeref',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('Zeref'),
                        subtitle: Text('Zeref : Nothing, Just Bored'),
                        trailing: Text('14:54'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
