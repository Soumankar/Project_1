import 'package:flutter/material.dart';

class HeadcontPage extends StatefulWidget {
  const HeadcontPage({super.key});

  @override
  State<HeadcontPage> createState() => _HeadcontPageState();
}

class _HeadcontPageState extends State<HeadcontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NO OF HEADCOUNTS'),
      ),
      body: Column(children: [
        Container(
          color: Colors.black,
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          child: const Center(
            child: Text(
              'Total no. of headconts:',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
