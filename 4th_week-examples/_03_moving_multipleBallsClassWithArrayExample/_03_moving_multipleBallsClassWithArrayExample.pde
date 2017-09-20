Ball b;    // 클래스 인스턴스를 선언

void setup(){
    size(800, 800);
    
    // 인스턴스를 생성자를 이용하여 초기화한다.
    b = new Ball(600, 200, 50);
}

void draw(){
    background(255);
    
    b.move();
    b.bounce();
    b.drawBall();
}