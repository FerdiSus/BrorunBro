import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';



class ProgramLari extends StatefulWidget {
  const ProgramLari({super.key});

  @override
  State<ProgramLari> createState() => _ProgramLariState();
}

class _ProgramLariState extends State<ProgramLari> {
  final List<String> imgList = [
    "https://images.unsplash.com/photo-1603102859961-64b17d43580d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80",
    "https://images.unsplash.com/photo-1603102859961-64b17d43580d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80",
    "https://images.unsplash.com/photo-1603102859961-64b17d43580d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80",
    "https://images.unsplash.com/photo-1603102859961-64b17d43580d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80",
    
  ];
  final List<String> imgList1 = [
    "https://images.unsplash.com/photo-1486829060564-50dae90dccd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80",
    "https://images.unsplash.com/photo-1486829060564-50dae90dccd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80",
    "https://images.unsplash.com/photo-1486829060564-50dae90dccd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80",
    "https://images.unsplash.com/photo-1486829060564-50dae90dccd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80",
  ];

  final List<String> imgList2 = [
    "https://images.unsplash.com/photo-1457449205106-d0aad138e99b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1457449205106-d0aad138e99b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1457449205106-d0aad138e99b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1457449205106-d0aad138e99b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
  ];

  final List<String> imageTexts = [
    'Latihan Minggu ke-1',
    'Latihan Minggu ke-2',
    'Latihan Minggu ke-3',
    'Latihan Minggu ke-4',
  ];
  

    int _currentIndex = 0;
    int _index = 1;
  
  void _onImageTapped(int index) {
    // Navigasi ke halaman selanjutnya di sini, dengan mengganti '/next_page' sesuai dengan rute yang Anda inginkan.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(index: index),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: (Color(0xFF323F68)),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C2757),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Program Latihan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20, left: 15),
                child: Text("Berjalan untuk menurunkan berat", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 5),
                child: Container(
                  height: 180,
                  width: 500,
                  child: PageView.builder(
                    itemCount: imgList.length,
                    controller: PageController(
                      initialPage: _currentIndex,
                    ),
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                       return GestureDetector(
                          onTap: () {
                          _onImageTapped(index);
                          },
                         child: Stack(
                          children: [
                            Image.network(
                              imgList[index],
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 20,
                              left: 10,
                              child: Text(
                                imageTexts[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                                             ),
                       );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20, left: 15),
                child: Text("Lari untuk Mengurangi Berat", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 5),
                child: Container(
                  height: 180,
                  width: 500,
                  child: PageView.builder(
                    itemCount: imgList.length,
                    controller: PageController(
                      initialPage: _currentIndex,
                    ),
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                       return GestureDetector(
                          onTap: () {
                          _onImageTapped(index);
                          },
                         child: Stack(
                          children: [
                            Image.network(
                              imgList[index],
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 20,
                              left: 10,
                              child: Text(
                                imageTexts[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                                             ),
                       );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20, left: 15),
                child: Text("Akademi Kelajuan", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 5),
                child: Container(
                  height: 180,
                  width: 500,
                  child: PageView.builder(
                    itemCount: imgList.length,
                    controller: PageController(
                      initialPage: _currentIndex,
                    ),
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                       return GestureDetector(
                          onTap: () {
                          _onImageTapped(index);
                          },
                         child: Stack(
                          children: [
                            Image.network(
                              imgList[index],
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 20,
                              left: 10,
                              child: Text(
                                imageTexts[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                                             ),
                       );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  
  final int index;

  NextPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Color(0xFF323F68)),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C2757),
        title: Text("Minggu ke-1"),
      ),
      body: Padding(  
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text("disini Program", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      )
    );;
  }
}
