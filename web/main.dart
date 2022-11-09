import 'dart:html';
import 'package:csv/csv.dart';


var canvas = document.querySelector('canvas') as CanvasElement ;
var ctx = canvas.getContext('2d') as CanvasRenderingContext2D ;
List<List<dynamic>> provaTesto = []; //Dynamic list to contain csv


 void readCsvSleepFile(String file){
   provaTesto = const CsvToListConverter().convert(file);
   int i = 15;

   provaTesto.forEach((element) =>{ 
    
    element.forEach((element) =>{
      
    
     drawLine(5, i, element.length),
     i =i + 20
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
 String file = "/assets/prova (1).csv";

//HttpRequest
  var request = HttpRequest.getString(file).then(readCsvSleepFile);

}
