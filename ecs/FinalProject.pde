int score;
int lives;
Car c1;
Car c2;
Car c3;
Bunny b1;
Log l1;
Log l2;


void setup() {
  size(500, 800);
  score = 0;
  lives = 3;
  c1 = new Car(5, 200);
  c2 = new Car(5, 150);
  c3 = new Car(5, 100);
  b1 = new Bunny(width/2, 450);
  l1 = new Log(100,380);
  l2 = new Log(100, 350);
}

void draw() {
  background(180, 211, 247);
  drawBG();
  c1.display();
  c1.move();
  c2.display();
  c2.move();
  c3.display();
  c3.move();
  l1.display();
  l1.move();
  l2.display();
  l2.move();
  b1.display();
  scoreBoared();
  if (dist(b1.x, b1.y, c1.x, c1.y)<30) {
    lives = lives - 1;
    b1.x = width/2;
    b1.y = 700; 
  }
  if (dist(b1.x,b1.y,c2.x,c2.y)<30) {
  lives = lives - 1;
  b1.x = width/2;
  b1.y = 700;
   }
   if (dist(b1.x,b1.y,c3.x,c3.y)<30) {
   lives = lives - 1;
   b1.x = width/2;
   b1.y = 700;
   }
  
  if(b1.y < 100) {
  score = score + 100;
  b1.x = width/2;
  b1.y = 700;
  }
  if(lives < 1) {
  fill(0);
  rectMode(CORNER);
  rect(0,0,width,height);
  fill(255);
  text("GAME OVER!!!" ,200,400);
  noLoop();
  }
}

void keyPressed() {
   if (keyPressed) {
    if (key == 'w' || key == 'W') {
     b1.move('w');
    } else if (key == 's' || key == 'S') {
      b1.move('s');
    } else if (key == 'a' || key == 'A') {
     b1.move('a');
    } else if (key == 'd' || key == 'D') {
      b1.move('d');
    }
  }
}
void drawBG() {
  fill(0, 0, 77);
  rect(0, 300, width, 100);
}

void scoreBoared() {
  fill(127);
  rect(0, 0, width, 30);
  fill(0);
  text("Score:" + score + " Lives:" + lives, 10, 20);
}
