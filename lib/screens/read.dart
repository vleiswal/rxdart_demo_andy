import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Read extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sonnet 64'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Stream'),
              Tab(text: 'Publish'),
              Tab(text: 'Behaviour'),
              Tab(text: 'Replay'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TabBarView(
            children: <Widget>[
              Scaffold(
                body: tabBody('Standard Dart Stream Controller'),
              ),
              Scaffold(
                body: tabBody(
                    'Exactly like a normal broadcast StreamController with one exception: this class is both a Stream and Sink'),
              ),
              Scaffold(
                body: tabBody(
                    'A special StreamController that captures the latest item that has been added to the controller, and emits that as the first item to any new listener.'),
              ),
              Scaffold(
                body: tabBody(
                    'A special StreamController that captures all of the items that have been added to the controller, and emits those as the first items to any new listener'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  tabBody(String description) {
    return ListView(
      children: <Widget>[
        Text(description),
        SizedBox(
          height: 20,
        ),
        Divider(),
        Text(
          'My sonnet Text',
          style: GoogleFonts.imFellEnglish(
            textStyle: TextStyle(fontSize: 22),
          ),
        ),
      ],
    );
  }
}
