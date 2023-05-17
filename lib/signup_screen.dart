import 'dart:ui';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(
                  0.5,
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://www.pexels.com/photo/1125328/download/',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 0, right: 0, left: 0,
              // top: 300,
              child: Container(
                width: 300.0,
                height: 400.0,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: Text(
                        'Looks like you dont have an account. \n'
                        'Lets create a new account for',
                        style: TextStyle(color: Colors.white70, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Text(
                        'abc@gmail.com',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          labelText: 'Password',
                          suffixIcon: TextButton(
                              onPressed: () {},
                              child: Text(
                                'View',
                                style: TextStyle(color: Colors.black),
                              )),
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),

              ),


            ),
            Positioned(
              top: 520,
              left: 30,
              child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                      child: Text('By selecting Agree and Continue below,\n'
                          'I agree to\n',style: TextStyle(color: Colors.white
                      ),
                      ),
                    ),

                Text('Terms Of Service and Privacy Policy',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                  ],
                ),
    ],
            ),
            ),

            Positioned(
              top: 200,
              left: 20,
              child: Text(
                'Sign up',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 600,
              bottom: 30,
              left: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(300, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'Agree and Continue',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
          ],
          
        )
        
    );
  }
}
