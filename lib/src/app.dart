import 'package:flutter/material.dart';
import 'views/intro/introduction.dart';
import 'views/auth/auth.dart';
import 'views/auth/register.dart';
import 'views/dashboard/dashboard.dart';
import 'views/dashboard/components/profile/edit_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        fontFamily: 'SFPro',
      ),
      routes: {
        '/login': (context) => const AuthContainer(),
        '/register': (context) => const Register(),
        '/dashboard': (context) => const Dashboard(),
        '/edit-profile': (context) => const EditProfilePage(),
      },
      debugShowCheckedModeBanner: false,
      home: const FindfriendsgetinspirationWidget(),
    );
  }
}
