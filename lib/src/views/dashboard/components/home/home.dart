import 'package:flutter/material.dart';
import 'components/greeting.dart';
import 'components/post_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Greeting(),
            Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: const EdgeInsets.only(left: 30, right: 30),
                height: 150,
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
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          labelText: 'Write something...',
                          border: InputBorder.none),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  child: const Icon(Icons.photo_outlined,
                                      color: Color.fromARGB(207, 0, 123, 255)),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    child: const Icon(Icons.video_call_outlined,
                                        color:
                                            Color.fromARGB(207, 0, 123, 255))),
                                Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const Icon(
                                        Icons.insert_drive_file_outlined,
                                        color:
                                            Color.fromARGB(207, 0, 123, 255)))
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Post'),
                            ),
                          ],
                        ))
                  ],
                )),
            const PostCard(),
          ],
        ),
      ),
    );
  }
}
