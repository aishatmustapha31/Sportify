import 'package:flutter/material.dart';
import 'package:sportify/models/onboarding_model.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportify/screen/components.dart';
import 'package:sportify/screen/home/home_page.dart';
import 'package:sportify/screen/onboarding/login.dart';
import 'package:sportify/screen/onboarding/sign_up.dart';
import 'package:sportify/screen/onboarding/login.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _initialPage = 0;

  List<OnboardingModel> items = [
    OnboardingModel(image: ('asset/images/picture1.png'), title: '"Imagination is more\nimportant than\nknowledge"'),
    OnboardingModel(image: ('asset/images/picture2.png'), title: '"A negative mind will\nnever give you a\npositive life"'),
    OnboardingModel(image: ('asset/images/picture3.png'), title: '"You are strong,\nbeautiful and special"'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                  child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: _controller,
                      onPageChanged: (value) => setState(() => _initialPage =value),
                      itemCount: items.length,
                      itemBuilder: (context, index){
                        return Column(
                          children: [
                            Image.asset(items[index].image,
                              width: MediaQuery.of(context).size.width,
                              semanticLabel: 'Dashboard images',),

                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              items[index].title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 50),


                          ],
                        );
                      }
                  )
              ),


              Visibility(
                visible: _initialPage == 2,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUp()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(text: 'Login', onPressed: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => Login()));
                        }
                        ),
                        CustomButton(text: 'Sign Up', onPressed: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => SignUp()));
                        }
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
