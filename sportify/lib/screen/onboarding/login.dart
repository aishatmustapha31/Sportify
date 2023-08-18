import 'package:flutter/material.dart';
import 'package:sportify/screen/components.dart';
import 'package:sportify/screen/home/home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailAddressFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              SizedBox(height: 31,),

              Align(
                alignment: Alignment.center,
                child: Image.asset('asset/images/Group 219.png',
                ),
              ),

              SizedBox(height: 22,),

              Align(
                alignment: Alignment.topLeft,
                child: Text('Login',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                  ),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Access your account with your email\nand your password',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),
              SizedBox(height: 18,),

            //  SizedBox(height: 16,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Provide your email address',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),
              SizedBox(height: 10,),
              TextFormField(
                  controller: emailAddressFieldController,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.none),
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide:
                          BorderSide(color: Color(0xFFd8d8d8), width: 1)),
                      focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide:
                          BorderSide(color: Color(0xFFd8d8d8), width: 1)),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontSize: 14,
                      ))),

              SizedBox(height: 16,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Provide a passport to access your account',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),
              SizedBox(height: 10,),
              TextFormField(
                  controller: passwordFieldController,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.none),
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide:
                          BorderSide(color: Color(0xFFd8d8d8), width: 1)),
                      focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide:
                          BorderSide(color: Color(0xFFd8d8d8), width: 1)),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontSize: 14,
                      ))),

              SizedBox(height: 16,),

              SizedBox(height: 46,),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const HomePage()));
                },
                child: CustomButton(text: 'Login', onPressed: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => HomePage()));
                }
                ),
              ),
              SizedBox(height: 46,),

              Align(
                alignment: Alignment.center,
                child: Text('“Count your blessings\nnot your problems.”',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
