import 'package:cv_details/cv_model.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(cvDetails: cvinfo)
    ),
  );
}
