import 'dart:html';
import 'dart:json';
import 'dart:math';
import 'dart:async';


import 'included.dart';
import 'package:SoSimple/SoSimple.dart';


void main() {
 


  addReverseTextSample();
  
 
}




addReverseTextSample() {
  query("#sample_text_id")
  ..text = "Click me!"
  ..onClick.listen(reverseText);
  
}



void reverseText(MouseEvent event) {
  var text = query("#sample_text_id").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  query("#sample_text_id").text = buffer.toString();
  
  
  
  
}




