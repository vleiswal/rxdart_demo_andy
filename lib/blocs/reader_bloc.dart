import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

class ReaderBloc {
  final _dartStream = StreamController<String>();
  final _publishStream = PublishSubject<String>();
  final _behaviourStream = BehaviorSubject<String>();
  final _replayStream = ReplaySubject<String>();

  startReading() async {
    // var contents = await File(
    //         'C:\\Users\\HWalker\\Documents\\FlutterProj\\AndyJulow\\rxdart_andy_demo\\lib\\assets\\sonnet.txt')
    //     .openRead()
    //     .transform(utf8.decoder)
    //     .transform(LineSplitter())
    //     .toList();

    var contents = LineSplitter()
        .convert(await rootBundle.loadString('assets/sonnet.txt'));

    for (String l in contents) {
      print(l);
    }
  }

  dispose() {
    _dartStream.close();
    _publishStream.close();
    _behaviourStream.close();
    _replayStream.close();
  }
}
