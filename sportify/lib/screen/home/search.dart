import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search', style: TextStyle(
                    color: Colors.white
                  ),),
                  Icon(Icons.camera_alt_outlined, color: Colors.white,)
                ],
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView(
                  children: [
                    TextField(
                      controller: textEditingController,
                      style: TextStyle(

                      ),
                      decoration: InputDecoration(
                        hintText: 'What do you want to listen to?',
                        hintStyle: TextStyle(
                          color: Colors.black
                        ),
                        contentPadding: EdgeInsets.all(0),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search, color: Colors.black,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3)
                      ),
                      child: Row(
                        children: [
                          Image.asset('asset/images/logo.png', )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildText(String text){

  }
}
