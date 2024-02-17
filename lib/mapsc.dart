// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';


// class MapsScreen extends StatefulWidget {
//   static const routeName = '/map-screen';
  
//   MapsScreen(
      
//       );
//   @override
//   State<MapsScreen> createState() => _MapsScreenState();
// }

// class _MapsScreenState extends State<MapsScreen> {
//   late LatLng? selectedCordinates = null;
//   void selectedLocation(LatLng? cordinates) {
//     setState(() {
//       selectedCordinates = cordinates;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
         
//             IconButton(
//               onPressed: () {
//                 Navigator.of(context).pop(selectedCordinates);
//               },
//               icon: Icon(
//                 Icons.check,
//               ),
//             )
//         ],
//         backgroundColor: Colors.indigo,
//         title: Text("Google Maps"),
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(
//             31.34553620,
//             74.19457536,
//           ),
//           zoom: 9,
//         ),
//         onTap: widget.isSelected ? selectedLocation : null,
//         markers: selectedCordinates != null && widget.isSelected == false
//             ? {
//                 Marker(
//                   markerId: MarkerId("M1"),
//                   position: selectedCordinates ??
//                       LatLng(widget.intialLocation.latitude,
//                           widget.intialLocation.longitude),
//                 )
//               }
//             : {},
//       ),
//     );
//   }
// }