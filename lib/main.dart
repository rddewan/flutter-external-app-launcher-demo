import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {    
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                await LaunchApp.openApp(
                  androidPackageName: 'net.pulsesecure.pulsesecure',
                  iosUrlScheme: 'pulsesecure://',
                  appStoreLink: 'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
                  openStore: true
                );

              }, 
              child: const Text('Pulsesecure')
            ),
            ElevatedButton(
              onPressed: () async {
                await LaunchApp.openApp(
                  androidPackageName: 'com.facebook.katana',
                  iosUrlScheme: 'pulsesecure://',
                  appStoreLink: 'itms-apps://itunes.apple.com/us/app/facebook/id284882215',
                  openStore: true
                );

              }, 
              child: const Text('Facebook')
            ),
            ElevatedButton(
              onPressed: () async {
                await LaunchApp.openApp(
                  androidPackageName: 'com.example.xspring_mobile',
                  iosUrlScheme: 'xspring://',
                  appStoreLink: 'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
                  openStore: true
                );

              }, 
              child: const Text('XCP')
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
