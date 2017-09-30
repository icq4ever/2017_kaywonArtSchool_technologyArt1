PImage beemo;
int numberOfBalls = 500;    // 공의 갯수를 변수로 지정한다.
Ball []balls = new Ball[numberOfBalls];    // 여러개의 공을 배열을 이용하여 선언

void setup() {
    size(400, 495);

    // beemo 라는 이미지 변수에 download.png파일을 담는다.
    beemo = loadImage("download.png");

    // 선언된 공의 갯수만큼 생성자를 사용하여 초기화한다.
    for (int i=0; i<numberOfBalls; i++) {    
        balls[i] = new Ball(random(width), random(height), 20);
    }
}

void draw() {
    background(255);

    // 선언된 공의 갯수만큼 반복하며, 각 공의 행동을 지정해준다.
    for (int i=0; i<numberOfBalls; i++) {
        balls[i].getColor(beemo);
        balls[i].move();
        balls[i].bounce();
        // ball.bounce(beemo);    // 클래스의 bounce함수를 수정하여 자동으로 bounce의 범위를 설정할 수도 있다.
        balls[i].drawBall();
    }
}