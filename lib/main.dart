import 'package:flutter/material.dart';
import 'package:dropdown/screens/signin.dart';
import 'package:dropdown/widget/reusable_widgets.dart';

void main()  {
  runApp(Dropd());
}

class Dropd extends StatelessWidget {
  const Dropd({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}
class SplashScreen extends StatelessWidget {
  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 3)); // Simulate a 3-second delay
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Navigate to the main screen
            return SignInScreen();
          } else {
            return Center(
                child: Image.asset(imageName)
            );
          }
        },
      ),
    );
  }
}