import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

const color1 = Color.fromARGB(242, 3, 1, 1);
const color2 = Color.fromRGBO(2, 9, 24, 0.9882352941176471);

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(color1 , color2),
      ),
    ),
  );
}


 




//refractor >> wrap
//command pallete > format document 