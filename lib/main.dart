import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await openAppSettings();
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.location.request();

                print("======================");
                print(res);
                print("======================");

                if (res == PermissionStatus.granted) {
                  print("Permission Granted");
                } else if (res == PermissionStatus.denied) {
                  print("Permission denied");
                } else if (res == PermissionStatus.permanentlyDenied) {
                  print("Permission permanentlyDenied");
                } else if (res == PermissionStatus.limited) {
                  print("Permission limited");
                }
              },
              child: Text("Location Permission"),
            ),
            ElevatedButton(
                onPressed: () async {
                  PermissionStatus res = await Permission.contacts.request();
                  print("======================");
                  print(res);
                  print("======================");

                  if (res == PermissionStatus.granted) {
                    print("Permission Granted");
                  } else if (res == PermissionStatus.denied) {
                    print("Permission denied");
                  } else if (res == PermissionStatus.permanentlyDenied) {
                    print("Permission permanentlyDenied");
                  } else if (res == PermissionStatus.limited) {
                    print("Permission limited");
                  }
                },
                child: Text("Contect")),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.bluetooth.request();
                print("======================");
                print(res);
                print("======================");

                if (res == PermissionStatus.granted) {
                  print("Permission Granted");
                } else if (res == PermissionStatus.denied) {
                  print("Permission denied");
                } else if (res == PermissionStatus.permanentlyDenied) {
                  print("Permission permanentlyDenied");
                } else if (res == PermissionStatus.limited) {
                  print("Permission limited");
                }
              },
              child: Text("Bluetooth"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.camera.request();
                print("======================");
                print(res);
                print("======================");

                if (res == PermissionStatus.granted) {
                  print("Permission Granted");
                } else if (res == PermissionStatus.denied) {
                  print("Permission denied");
                } else if (res == PermissionStatus.permanentlyDenied) {
                  print("Permission permanentlyDenied");
                } else if (res == PermissionStatus.limited) {
                  print("Permission limited");
                }
              },
              child: Text("Camera"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.storage.request();
                print("======================");
                print(res);
                print("======================");

                if (res == PermissionStatus.granted) {
                  print("Permission Granted");
                } else if (res == PermissionStatus.denied) {
                  print("Permission denied");
                } else if (res == PermissionStatus.permanentlyDenied) {
                  print("Permission permanentlyDenied");
                } else if (res == PermissionStatus.limited) {
                  print("Permission limited");
                }
              },
              child: Text("Storage"),
            ),
            // ElevatedButton(onPressed: ()async{
            //  PermissionStatus res= await Permission.audio.request();
            //  print("======================");
            //  print(res);
            //  print("======================");
            //
            //  if (res == PermissionStatus.granted) {
            //    print("Permission Granted");
            //  } else if (res == PermissionStatus.denied) {
            //    print("Permission denied");
            //  } else if (res == PermissionStatus.permanentlyDenied) {
            //    print("Permission permanentlyDenied");
            //  } else if (res == PermissionStatus.limited) {
            //    print("Permission limited");
            //  }
            // }, child: Text("Audio"))
            ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.calendar.request();
                print("======================");
                print(res);
                print("======================");

                if (res == PermissionStatus.granted) {
                  print("Permission Granted");
                } else if (res == PermissionStatus.denied) {
                  print("Permission denied");
                } else if (res == PermissionStatus.permanentlyDenied) {
                  print("Permission permanentlyDenied");
                } else if (res == PermissionStatus.limited) {
                  print("Permission limited");
                }
              },
              child: Text("Calander"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus res = await Permission.photos.request();
                print("======================");
                print(res);
                print("======================");

                if (res == PermissionStatus.granted) {
                  print("Permission Granted");
                } else if (res == PermissionStatus.denied) {
                  print("Permission denied");
                } else if (res == PermissionStatus.permanentlyDenied) {
                  print("Permission permanentlyDenied");
                } else if (res == PermissionStatus.limited) {
                  print("Permission limited");
                }
              },
              child: Text("Photos"),
            ),
          ],
        ),
      ),
    );
  }
}
