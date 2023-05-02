import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/example.dart';
import 'package:flutter_app/widgets/user_profile.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: UserProfile(),
    );
  }
}
