import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ChatItems extends StatelessWidget {
  const ChatItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Row(
        children: [
          ProfilePicture(
            name: 'Haris Mauladi',
            radius: 27,
            fontsize: 14,
            random: false,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe'),
              Text('Hello, how are you?'),
            ],
          )
        ],
      ),
    );
  }
}
