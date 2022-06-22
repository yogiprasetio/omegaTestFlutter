import 'package:flutter/material.dart';
import 'package:untitled/ui/pages/pages.dart';
import 'ui/pages/pages.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataList(),
    );
  }
}
