/*
Dominick Twombly 47078542
CSE 1341 Final Project
The Snake Game
*/

int snakeNum = 1;
int speedX = 10;
int speedY = 10;
int snakeX = 0;
int snakeY = 0;
int snakeSize = 10;
int foodX = int(random(0, width/10))*10;
int foodY = int(random(1, height/10))*10;
boolean eatFood = false;
color snakeColor = color(0,200,0);
color foodColor = color(255,100,100);
Snake[] snakes = new Snake[snakeNum];
Food[] food = new Food[0];


void setup() {
  size(500,500);
}

void draw() {
  background(255);
  fill(snakeColor);
  rect(snakeX,snakeY, snakeSize, snakeSize);
  if(eatFood == true){
    food[0].position();
    eatFood = false;
  }
}