import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/loading.dart';

import 'Provider/sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          'https://i.pinimg.com/originals/a2/60/ae/a260ae26f86df4e16feb67e3dd95fa36.png'),
                      fit: BoxFit.cover)),
              child:  SignUpWidget(),
            ),
          );
  }
}
