document.addEventListener("DOMContentLoaded", function(){
  const myCanvas = document.getElementById('mycanvas');
  myCanvas.height = 500;
  myCanvas.width = 500;

  const ctx = myCanvas.getContext('2d');

  ctx.fillStyle = 'lightblue';
  ctx.fillRect(0, 0, 500, 500);

  //face
  ctx.beginPath();
  ctx.arc(250, 250, 100, 0, 2*Math.PI);
  ctx.strokeStyle = "tan";
  ctx.lineWidth = 2;
  ctx.stroke();
  ctx.fillStyle = "beige";
  ctx.fill();

  //mouth
  ctx.beginPath();
  ctx.arc(250, 300, 20, 10, 2*Math.PI, true);
  ctx.strokeStyle = "tan";
  ctx.lineWidth = 2;
  ctx.stroke();
  ctx.fillStyle = "red";
  ctx.fill();

  //left eye
  ctx.beginPath();
  ctx.arc(280, 230, 20, 22, 2*Math.PI, false);
  ctx.strokeStyle = "tan";
  ctx.lineWidth = 2;
  ctx.stroke();
  ctx.fillStyle = "white";
  ctx.fill();
  ctx.beginPath();

  //right eye
  ctx.arc(220, 230, 20, 22, 2*Math.PI, false);
  ctx.strokeStyle = "tan";
  ctx.lineWidth = 2;
  ctx.stroke();
  ctx.fillStyle = "white";
  ctx.fill();

});
