// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:syncfusion_flutter_maps/maps.dart';

// class DetailPage extends StatefulWidget {
//   const DetailPage({super.key});

//   @override
//   State<DetailPage> createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   MapLatLng loc =  const MapLatLng(-6.2344788018916155, 106.87792282186145);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("cekkk"),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 300,
//               child: SfMaps(layers: [MapTileLayer(
//                 initialZoomLevel: 15,
//                 initialFocalLatLng: loc,
//                 initialMarkersCount: 1,
//                 urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
//                  markerBuilder: (BuildContext context, int index){
//                   return MapMarker(
//                     latitude: loc.latitude,
//                     longitude: loc.longitude, 
//                     child: Icon(Icons.location_on),);
//                  },)]),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }