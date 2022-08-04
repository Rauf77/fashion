import 'package:flutter/material.dart';
import 'package:myapp2/Home/Provider/googlebutton.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 175,
            child: Text(
              'Welcome Back To My App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Spacer(),
        GoogleSignupButtonWidget(),
        SizedBox(height: 12,),
        Text(
          'Login to Continue',
          style: TextStyle(
            fontSize: 16
          ),


        ),
        Spacer()
      ],
    );
  }
}
