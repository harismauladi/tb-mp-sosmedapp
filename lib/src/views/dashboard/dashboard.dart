import 'package:flutter/material.dart';

import 'components/home/home.dart';
import 'components/profile/profile.dart';
import 'components/chat/chat.dart';
import 'components/search/search.dart';
import 'components/group/group.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Tab> tabItems = [
      const Tab(icon: Icon(Icons.home_outlined)),
      const Tab(icon: Icon(Icons.search)),
      const Tab(icon: Icon(Icons.chat_bubble_outline)),
      const Tab(icon: Icon(Icons.groups_2_outlined)),
      const Tab(icon: Icon(Icons.person_2_outlined)),
    ];
    return DefaultTabController(
        length: tabItems.length,
        child: Scaffold(
            appBar: AppBar(
              title: Container(
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Add image logo
                      Image(
                        image: AssetImage('assets/images/logo_landscape.png'),
                        width: 100,
                      ),
                      Icon(Icons.menu),
                    ],
                  )),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            bottomNavigationBar: TabBar(
              indicatorColor: const Color.fromARGB(207, 0, 123, 255),
              unselectedLabelColor: Colors.black,
              labelColor: const Color.fromARGB(207, 0, 123, 255),
              indicator: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color.fromARGB(207, 0, 123, 255),
                    width: 3.0,
                  ),
                ),
              ),
              tabs: tabItems,
            ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const TabBarView(
                children: [
                  // Add home view
                  Home(),
                  // Add search view
                  Search(),
                  // Add chat view
                  Chat(),

                  Group(),
                  // Add profile view
                  Profile(),
                ],
              ),
            )));
  }
}
