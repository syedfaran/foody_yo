import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'my_app.dart';
import 'dependency_injector.dart' as di;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
   di.init();
  runApp(const MyApp());
}



