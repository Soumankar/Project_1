import 'package:flutter/material.dart';
import 'package:headcount/about_page.dart';
import 'package:headcount/attendence_page.dart';
import 'package:headcount/camra_page.dart';
import 'package:headcount/home_pape.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HEADCOUNT',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'HEADCOUNT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  // ignore: non_constant_identifier_names
  List<Widget> pages = const [
    // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
    HomePage(),
    // ignore: non_constant_identifier_names
    AttendencePage(),
    CameraPage(),
    AboutPage(),
  ];

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person_search_rounded), label: 'Attendence'),
          NavigationDestination(icon: Icon(Icons.camera), label: 'Cameras'),
          NavigationDestination(icon: Icon(Icons.info), label: 'About'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
