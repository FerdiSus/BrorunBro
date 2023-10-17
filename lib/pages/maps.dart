import 'dart:async';
import 'package:brorun/pages/Create_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';  
import 'package:flutter/material.dart';


class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.234490, 106.877986),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-6.234490, 106.877986),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
           margin: EdgeInsets.only(left: 20),
           child: FloatingActionButton(
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=> const CreatePage()));
              },
             child: const Icon(Icons.arrow_back),
            ),
         ),
          FloatingActionButton.extended(
            onPressed: _goToThePoint,
            label: const Text('To Home'),
            icon: const Icon(Icons.home_filled),
          ),
        ],
      ),
    );
  }

  Future<void> _goToThePoint() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}