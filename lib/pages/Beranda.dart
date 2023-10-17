import 'package:brorun/pages/Create_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: (Color(0xFF323F68)),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.warning_rounded))
          ],
          backgroundColor: Color(0xFF1C2757),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pelari Sepuh",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "tempuh lebih jauh & lebih cepat",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => CreatePage()));
          },
          child: const Icon(Icons.timer),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Aktivitas Terakhir",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.map),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Min 08:17",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "2,95km",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00:19:58",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "06.46 menit/km",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "196 Kcal",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.map),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "13 Agu 16:18",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "3,48km",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00:28:01",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "08:02 menit/km",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "260 Kcal",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.map),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "6 Agu 16:18",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "3,73km",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00:28:21",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "07.35 menit/km",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "260 Kcal",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.map),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "11 Jun 17:04",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "7,72km",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "01:08:58",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "08.56 menit/km",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "508 Kcal",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                       Card(
                        child: ListTile(
                          leading: Icon(Icons.map),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Min 08:17",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "2,95km",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "00:19:58",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "06.46 menit/km",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  ),
                                  Text(
                                    "196 Kcal",
                                    style: TextStyle(fontSize: 12, height: 1.9),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
