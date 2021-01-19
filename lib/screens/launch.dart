import 'package:flutter/material.dart';
import 'package:rxdart_andy_demo/screens/read.dart';

class Launch extends StatefulWidget {
  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          child: Column(
            children: <Widget>[
              Text(
                'Shakespeare\'s Sonnets',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Sonnet 64',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text('Engage', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Read()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
