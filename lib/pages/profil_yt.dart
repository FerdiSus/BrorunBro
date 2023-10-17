import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Prof extends StatefulWidget {
  const Prof({super.key});

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  final double coverHeight = 280;
  final double profilHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            "Ferdi Susanto",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Pelari pemula",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildSosialIcon(FontAwesomeIcons.instagram),
              const SizedBox(width: 12,),
              BuildSosialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12,),
              BuildSosialIcon(FontAwesomeIcons.twitter),
              const SizedBox(width: 12,),
              BuildSosialIcon(FontAwesomeIcons.linkedin),
            ],
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Rekor terbaik", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text("JARAK TERJAUH", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("7,72km", style: TextStyle(color: Colors.green[600], fontSize: 28, fontWeight: FontWeight.bold),),
                          Text("11 Jun 08:30")
                        ],
                      )
                     ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text("KELAJUAN TERBAIK", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("6:46 menit/km", style: TextStyle(color: Colors.green[600], fontSize: 28, fontWeight: FontWeight.bold),),
                          Text("10 Sep 08:17")
                        ],
                      )
                     ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text("DURASI TERLAMA", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("01:08:58", style: TextStyle(color: Colors.green[600], fontSize: 28, fontWeight: FontWeight.bold),),
                          Text("11 Jun 08:30")
                        ],
                      )
                     ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );

  Widget BuildSosialIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        child: Center(child: Icon(icon,size: 32),))),
  );
  

  Widget buildTop() {
    final top = coverHeight - profilHeight / 2;
    final Bottom = profilHeight / 2;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: Bottom),
            child: buildCoverImage(),
          ),
          Positioned(top: top, child: buildProfileImage()),
        ]);
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          "https://images.unsplash.com/photo-1551927336-09d50efd69cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profilHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage("assets/images/aneh.jpg"),
      );
}
