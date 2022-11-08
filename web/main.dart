import 'dart:html';
import 'package:csv/csv.dart';






void main() {
  var canvas = document.querySelector('canvas') as CanvasElement ;
  var ctx = canvas.getContext('2d') as CanvasRenderingContext2D ;
  List<List<dynamic>>? provaTesto; //Dynamic list to contain csv


//read csv and convert into a list of list
  void readCsvSleepFile(String file){
   provaTesto = CsvToListConverter().convert(file, fieldDelimiter: ';');
  }


//path csv
 String file = "/assets/prova.csv";


//HttpRequest
  HttpRequest.getString(file).then((String fileContents) {
  readCsvSleepFile(fileContents);
  print(provaTesto);
}).catchError((error) {
  print(error.toString());
});



}
