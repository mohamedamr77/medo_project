import 'package:flutter/material.dart';
import 'package:medo_project/chats_screen.dart';
import 'package:medo_project/component/custom_elevated_button.dart';
import 'package:medo_project/component/terms_check_box.dart';
import 'package:medo_project/constatnt.dart';

import 'component/custom_text_field_with_title.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage("assets/images/image 1.png")),
        ),
        title: const Text('Gesture'),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Text(
                "Sign in to Gesture",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: CustomTextFieldWithTitle(
                title: "Name",
                hintText: "input your Name in here",
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: CustomTextFieldWithTitle(
                title: "Email",
                hintText: "input your Email in here",
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: CustomTextFieldWithTitle(
                title: "Password",
                hintText: "input your password in here",
                isObscureText: true,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: CustomTextFieldWithTitle(
                title: "Confirm Password",
                hintText: "input your Confirm password in here",
                isObscureText: true,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: CustomElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChatsPage();
                },));
              }, title: "Sign Up"),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: OutlinedButton(onPressed: () {

              }, child: Text("Sign Up With Google ",
              style: TextStyle(
                color: AppConstant.primaryColor,
              ),)),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child:  TermsOfServiceCheckbox(),
            ),



            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  "Already have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff9A9AB0),
                  ),
                ),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text("Sign In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppConstant.primaryColor,
                    ),
                  ),
                )
              ],)
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),

          ],
        ),
      ),
    );
  }
}
