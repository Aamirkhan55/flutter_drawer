import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        width: 300,
        child: Container(
          color: Colors.amberAccent,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70, 
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/profile1.jpg',
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Jhon Snow',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}