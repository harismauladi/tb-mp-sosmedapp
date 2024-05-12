import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);

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
                        'Group',
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
                          name: 'Mercubuana Official',
                          img:
                              'https://lfodunqhxvhczpjvpxnh.supabase.co/storage/v1/object/public/twitter-bucket-no-auth/logo_portait.png',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('Mercubuana Official'),
                        subtitle: Text('Admin : Announcement..'),
                        trailing: Text('12:30'),
                      ),
                      ListTile(
                        leading: ProfilePicture(
                          name: 'FASILKOM',
                          img:
                              'https://lfodunqhxvhczpjvpxnh.supabase.co/storage/v1/object/public/twitter-bucket-no-auth/FASILKOM.jpeg',
                          radius: 20,
                          fontsize: 11,
                          random: false,
                        ),
                        title: Text('FASILKOM'),
                        subtitle: Text('Admin FASILKOM : Tro..'),
                        trailing: Text('12:51'),
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
