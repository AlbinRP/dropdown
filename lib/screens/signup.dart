
import 'package:flutter/material.dart';
import 'package:dropdown/screens/home_screen.dart.';
import 'package:dropdown/widget/reusable_widgets.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        ),
        body:Stack(
            children: [
              // Background Image
              Positioned.fill(
                child: Image.asset(
                  'assets/image/drop.jpg',
                  fit: BoxFit.cover,  // Adjust this as needed
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                           logoWidget("assets/image/drop.jpg"),
                          const SizedBox(
                            height: 4,
                          ),
                          const Center(child: Text('Drop Down',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          const SizedBox(
                            height: 15,
                          ),
                          reusableTextField("Enter Name", Icons.person_outline, false,
                              _emailTextController),
                          SizedBox(
                            height: 20,
                          ),
                          reusableTextField("Enter Email Id or Phone", Icons.email, false,
                              _emailTextController),
                          SizedBox(
                            height: 20,
                          ),
                          reusableTextField("Enter Password", Icons.lock_outlined, true,
                              _passwordTextController),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:  Row(
                                children: [
                                  StateSelector(),
                                ],
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:  Row(
                                children: [
                                  DistrictSelector(),
                                ],
                              )
                          ),

                          signInSignUpButton(context, false, () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                          })
                        ]
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}