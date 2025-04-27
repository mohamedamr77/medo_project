import 'package:flutter/material.dart';
import 'package:medo_project/component/custom_elevated_button.dart';
import 'package:medo_project/component/custom_text_field_with_title.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              child: Text(
                "Forget Password",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              child: Image(
                image: AssetImage("assets/images/forget_password.png"),
                height: 250,
                width: double.infinity,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              child: CustomTextFieldWithTitle(
                title: "Email",
                hintText: "input your email in here",
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              child: CustomElevatedButton(onPressed: () {}, title: "Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
