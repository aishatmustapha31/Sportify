import 'package:flutter/material.dart';
import 'package:sportify/screen/components.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController fullNameFieldController = TextEditingController();
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
                child: Text('Sign up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
               child: Text('Let get to know you',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),),
              ),
              SizedBox(height: 32,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Proide your full name',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),
              SizedBox(height: 5,),
              TextFormField(
                  controller: fullNameFieldController,
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
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontSize: 14,
                      ))),
              SizedBox(height: 16,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Proide your email address',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),
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
                child: Text('Proide a passport to access your account',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),
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
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontSize: 14,
                      ))),

              SizedBox(height: 16,),
              Align(
                alignment: Alignment.topLeft,
                child: Text('How ofen do you want to get quotas',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  ),),
              ),
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
                      hintText: 'In days (Max 7)',
                      hintStyle: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontSize: 14,
                      ))),
             SizedBox(height: 46,),
              CustomButton(text: 'Register', onPressed: (){}
              ),

              SizedBox(height: 46,),
              Align(
                alignment: Alignment.center,
                child: Text('“The moment you start to wonder if you deserve better, you do.”',
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
