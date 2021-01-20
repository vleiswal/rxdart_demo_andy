import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxdart_andy_demo/blocs/reader_bloc.dart';
import 'package:rxdart_andy_demo/screens/read.dart';

class Launch extends StatefulWidget {
  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  ReaderBloc readerBloc;

  @override
  void dispose() {
    readerBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    readerBloc = Provider.of<ReaderBloc>(context);
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
                  // Launch Reader
                  readerBloc.startReading();
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
