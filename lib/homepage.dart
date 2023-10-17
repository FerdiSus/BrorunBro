import 'package:brorun/pages/Beranda.dart';
import 'package:brorun/pages/Program.dart';
import 'package:brorun/pages/profil_yt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   List<Widget> _children = [Beranda(), ProgramLari(), Prof()];
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _children[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

final items = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Beranda"),
  BottomNavigationBarItem(
    icon: Icon(Icons.timer),
     label: "Program"),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
     label: "Profil"),
];