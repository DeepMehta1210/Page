import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[350],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                const CircleAvatar(
                  radius: 50.0,
                  // backgroundColor: Colors.red,
                  backgroundImage: AssetImage(
                    'Images/gal_gadot.jpg',
                  ),
                ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Gal Gadot",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Abel",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Flutter Devloper \nMachine Learning Enginer",
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 20,width: 300,child: Divider(thickness: 2,),),
              Card(
                color: Colors.blue[400],
                margin: const EdgeInsets.symmetric(
                  // vertical: 20,
                  horizontal: 40,
                ),
                child: const ListTile(
                  leading:
                    Icon(
                      Icons.phone,
                    ),
                    title: Text(
                      "+91 79844 16040",
                      style: TextStyle(fontSize: 20, fontFamily: "Abel"),
                    ),
                ),
              ),
              Card(
                color: Colors.blue[400],
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                child: const ListTile(
                  leading:
                    Icon(
                      Icons.mail,
                    ),
                  title:
                    Text(
                      "D5epmehta@gmail.com",
                      style: TextStyle(fontSize: 20, fontFamily: "Abel"),
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
