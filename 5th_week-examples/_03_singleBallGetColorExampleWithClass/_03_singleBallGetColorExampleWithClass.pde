PImage beemo;
Ball ball;

void setup(){
    size(400, 495);
    
    // beemo 라는 이미지 변수에 download.png파일을 담는다.
    beemo = loadImage("download.png");
    
    ball = new Ball(random(width), random(height), 20);
}

void draw(){
    background(255);
    
    ball.getColor(beemo);
    ball.move();
    ball.bounce();
    // ball.bounce(beemo);    // 클래스의 bounce함수를 수정하여 자동으로 bounce의 범위를 설정할 수도 있다.
    ball.drawBall();    
}