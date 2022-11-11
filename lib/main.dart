import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GoogleMapController? controller;

  final CameraPosition initialPosition =
      CameraPosition(target: LatLng(19.060617, 72.848791),);
  double lat = 0;
  double long = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google map'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: initialPosition,
            mapType: MapType.normal,
            onMapCreated: (controller) {
              setState(() {
                controller = controller;
              });
            },
            onTap: (val) {
              setState(() {
                lat = val.latitude;
                long = val.longitude;
              });
            },
          ),
          Text(
            "Lat: $lat\n Long: $long",
            style: TextStyle(fontSize: 20),
          ),
          Positioned(
            top: 50,
            child: ElevatedButton(
              onPressed: () async {
                Geolocator.getPositionStream().listen((Position position) {
                  setState(() {
                    print("===========================================");
                    print(lat);
                    print(long);
                    print("===========================================");
                    lat = position.latitude;
                    long = position.longitude;
                  });
                });
              },
              child: Text("get current location"),
            ),
          ),
        ],
      ),
    );
  }
}
