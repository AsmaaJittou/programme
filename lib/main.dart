import 'package:flutter/material.dart';
import 'package:programe/USER/screens/home/home.dart';
import 'package:programe/USER/screens/home/onboarding.dart';
import 'package:programe/USER/screens/wrapper.dart';
import 'package:programe/services/auth.dart';
import 'package:programe/services/sign_in.dart';
import 'package:provider/provider.dart';
import 'package:programe/models/user.dart';
import 'package:programe/USER/screens/home/onboarding1.dart';

import 'package:programe/admin/home/home.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
          child: MaterialApp(

        home:Home(),
      ), 
    );
  }
}
