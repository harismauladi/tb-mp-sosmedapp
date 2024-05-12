import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const ProfilePicture(
                name: 'John Doe',
                radius: 27,
                fontsize: 14,
                random: false,
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('2 hours ago'),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_add_alt_1_outlined),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
          const SizedBox(height: 10),
          Image.network(
            'https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
            Row(
            children: [
              IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment_outlined),
              ),
              IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share_outlined),
              ),
            ],
            ),
        ],
      ),
    );
  }
}
