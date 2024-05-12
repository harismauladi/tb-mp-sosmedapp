import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Discover Now',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                          // Search User
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search User',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        child: const Text(
                          'You Might Know',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const ProfilePicture(
                          name: 'Han So Hee',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: const Text('Han So Hee'),
                        // follow button in trailling
                        trailing: TextButton(
                          onPressed: () {},
                          child: const Text('Following'),
                        ),
                      ),
                      ListTile(
                        leading: const ProfilePicture(
                          name: 'Gintoki',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: const Text('Gintoki'),
                        trailing: TextButton(
                          onPressed: () {},
                          child: const Text('Follow'),
                        ),
                      ),
                      ListTile(
                        leading: const ProfilePicture(
                          name: 'Zeref',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: const Text('Zeref'),
                        trailing: TextButton(
                          onPressed: () {},
                          child: const Text('Follow'),
                        ),
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
