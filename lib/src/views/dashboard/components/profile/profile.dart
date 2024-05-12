import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 0),
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
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                ListTile(
                    leading: const ProfilePicture(
                      name: 'Haris Mauladi',
                      radius: 27,
                      fontsize: 14,
                      random: false,
                    ),
                    title: const Text(
                      'Haris Mauladi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      '@harism',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    // edit profile
                    trailing: GestureDetector(
                      onTap: () {
                        // Handle edit profile action
                        Navigator.pushNamed(context, '/edit-profile');
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: Color.fromARGB(207, 0, 123, 255),
                      ),
                    )),
                const Divider(),
                const Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '0',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '100K',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '500',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const DefaultTabController(
            length: 2, // Number of tabs
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Color.fromARGB(207, 0, 123, 255),
                  unselectedLabelColor: Colors.black,
                  labelColor: Color.fromARGB(207, 0, 123, 255),
                  tabs: [
                    Tab(text: 'Posts'),
                    Tab(text: 'Likes'),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: TabBarView(
                    children: [
                      // Content for the 'Posts' tab
                      Center(
                        child: Text('There are no posts yet'),
                      ),
                      // Content for the 'Likes' tab
                      Center(
                        child: Text('There are no likes yet'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
