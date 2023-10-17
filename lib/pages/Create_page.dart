import 'dart:async';
import 'package:brorun/homepage.dart';
import 'package:brorun/pages/maps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';  

// import 'package:google_maps_flutter/google_maps_flutter.dart';



class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  // GoogleMapController? mapController;
  int second = 0, minutes = 0, hour =0;
  String digitSeconds ="00", digitMinutes ="00", digitHours ="00";
  Timer? timer;
  bool started = false;
  List Laps =[];

  // //google map
  // void _onMapCreated(GoogleMapController controller){
  //   mapController = controller;
  // }

  // final LatLng _center = const LatLng(-6.234490,106.877986);
  //stop function
  void stop(){
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  //reset function
  void reset(){
    timer!.cancel();
    setState(() {
      second = 0;
      minutes = 0;
      hour = 0;

      digitHours= "00";
      digitMinutes= "00";
      digitSeconds= "00";

      started= false;
    });
  }

  void addlaps(){
    String Lap = "$digitHours:$digitMinutes:$digitSeconds";
    setState(() {
      Laps.add(Lap);
    });
  }

  //start function
  void start(){
    started =true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = second + 1;
      int localMinutes = minutes;
      int localHours = hour;

      if(localSeconds > 59 ){
        if(localMinutes > 59)
        {
          localHours++;
          localMinutes = 0;
        }else{
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        second = localSeconds;
        minutes = localMinutes;
        hour = localHours;

        digitSeconds = (second >= 10) ? "$second": "0$second";
        digitHours = (hour >= 10) ? "$hour": "0$hour";
        digitMinutes = (minutes >= 10) ? "$minutes": "0$minutes";
      });
     });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2757),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1C2757),
        leading: IconButton(
          onPressed: ()
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> Homepage()));
          },
          icon: Icon(Icons.arrow_back), color: Colors.white,),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MapSample()));
          },
          child: const Icon(Icons.navigation),
        ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // MapSample(),
              // GoogleMap(
              //   onMapCreated: _onMapCreated,
              //   initialCameraPosition: CameraPosition(
              //     target: _center,
              //     zoom: 11),),
              SizedBox(height: 5,),
              Center(
                child: Text("$digitHours:$digitMinutes:$digitSeconds", style: TextStyle(
                  color: Colors.white,
                  fontSize: 82,
                  fontWeight: FontWeight.w600
                  ),),
              ),
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  color: Color(0xFF323F68),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: ListView.builder(
                  itemCount: Laps.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Lap n*${index+1}", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            ),),
                          Text("${Laps[index]}", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            ),),
                        ],
                      ),
                    );
                  },),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: RawMaterialButton(
                    onPressed: (){
                      (!started) ?start() : stop();
                    },
                    shape: const StadiumBorder(side: BorderSide(color: Colors.blue)),
                    child: Text(
                      (!started) ? "Start" : "Pause",
                      style: TextStyle(color: Colors.white),),
                  ),),
                  SizedBox(width: 8,),
                  IconButton(
                    onPressed: (){
                      addlaps();
                    },
                    icon: Icon(Icons.flag, color: Colors.white ,)),
                  SizedBox(width: 8,),
                  Expanded(child: RawMaterialButton(
                    onPressed: (){
                      reset();
                    },
                    fillColor: Colors.blue,
                    shape: const StadiumBorder(),
                    child: Text("Akhiri", style: TextStyle(color: Colors.white),),
                  ),),
                ],
              )
            ],
          ),
        ) ),
    );
  }
}

