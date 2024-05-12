import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 50),
                  width: 300,
                  height: 100,
                  child: Image.asset('assets/images/logo_landscape.png'),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 50, left: 30),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(
                    top: 20, 
                    bottom: 20, 
                    left: 30, 
                    right: 30
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  height: 400,
                  margin: const EdgeInsets.only(
                    top: 20, 
                    left: 30, 
                    right: 30, 
                    bottom: 0
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            contentPadding: EdgeInsets.all(10),
                            suffixIcon: Icon(Icons.person),
                          ),
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            contentPadding: EdgeInsets.all(10),
                            suffixIcon: Icon(Icons.phone),
                          ),
                          style: TextStyle(),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          contentPadding: EdgeInsets.all(10),
                          suffixIcon: Icon(Icons.email),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            contentPadding: EdgeInsets.all(10),
                            suffixIcon: Icon(Icons.lock),
                          ),
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(207, 0, 123, 255),
                            minimumSize: const Size(300, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(left: 230),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Have an account? Login',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
