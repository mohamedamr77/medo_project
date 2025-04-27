
import 'package:flutter/material.dart';
import 'package:medo_project/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage("assets/images/image 1.png",)),
        ),
        title: const Text('Gesture'),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30,),
              Text("Welcome To gesture!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 30,),
              Text('''This innovation tool helps bridge communication gaps by translating sign language into text or speech, it  helps you recognize sign language in an easy way.
              ''',
               style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
               ),
              )
            ],
          ),
        ),
      ),
     floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return  SignInScreen();
          },));
        },
        backgroundColor: Color(0xff003300),
        child: Icon(Icons.arrow_forward, color: Colors.white,),
    ));
  }
}
