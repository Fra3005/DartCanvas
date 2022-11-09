import 'dart:html';
import 'package:csv/csv.dart';


var canvas = document.querySelector('canvas') as CanvasElement ;
var ctx = canvas.getContext('2d') as CanvasRenderingContext2D ;
List<List<dynamic>> provaTesto = []; //Dynamic list to contain csv
var newEl = [];

 void readCsvSleepFile(String file){
   provaTesto = const CsvToListConverter().convert(file);
   num y = 15;
   num x = 5;
   provaTesto.forEach((element) =>{ 
    
    element.forEach((element) =>{
     //drawLine(5, i, element.length),
     
     newEl = element.split(" "),
     x = 5,
     for (int i=0; i<newEl.length; i++){
      drawLine(x, y, newEl[i].length),
      x =x + newEl[i].length + 10, 
      print(newEl[i].length)
     }, 
     y =y + 20, 
    })
  });
 }


void drawLine(x, y, len){

ctx.lineWidth = 4;
    ctx
      ..beginPath()
      ..moveTo(x, y)
      ..lineTo(x + len, y)
      ..lineCap = 'round'
      ..stroke()
      ..closePath()
    ;
}


void main() {
 
//path csv
 String file = "/assets/Alice.csv";

//HttpRequest
  var request = HttpRequest.getString(file).then(readCsvSleepFile);

}
