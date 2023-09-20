import 'package:flutter/material.dart';
import 'package:flutter_drawer/ui/screens/Favorite.dart';
import 'package:flutter_drawer/ui/screens/Help.dart';
import 'package:flutter_drawer/ui/screens/Notification.dart';
import 'package:flutter_drawer/ui/screens/Privacy.dart';
import 'package:flutter_drawer/ui/screens/Report.dart';

class DrawerWidgets extends StatelessWidget {
  const DrawerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                    ),
                ],
              ),
              const Divider(color: Colors.white),
              _listItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyScreen()));
                },
                icon: Icons.security_outlined, 
                title: 'Privacy & Security',
                ),
              _listItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite()));
                },
                icon: Icons.favorite_border, 
                title: 'Favorite',
                ),
              _listItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
                },
                icon: Icons.notifications, 
                title: 'Notification',
                ),
              const Divider(color: Colors.white),  
              _listItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()));
                },
                icon: Icons.help_rounded, 
                title: 'Help',
                ),
              _listItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ReportScreen()));
                },
                icon: Icons.report, 
                title: 'Report',
                ),        
            ],
          ),
        ),
      );
  }
   _listItem({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      iconColor: Colors.black,
      textColor: Colors.black,
      leading: Icon(
        icon,
        size: 30,
        ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
        ),
        ),
    );
  }
}