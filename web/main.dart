import 'dart:html';

void main() {
  var canvas = document.querySelector('canvas') as CanvasElement ;
  var ctx = canvas.getContext('2d') as CanvasRenderingContext2D ;




  ctx
    ..strokeStyle = "black"
    ..beginPath()
    ..moveTo(100, 100)
    ..lineTo(150, 150)
    ..stroke()
    ..stroke()
    ..closePath()
  ;

}
