// 클래스 변수하나 선언
//Ball b;

// 클래스변수를 배열로 선언
Ball []b = new Ball[500];    

void setup(){
    size(800, 800);
    
    // 인스턴스를 생성자를 이용하여 초기화한다.
    
    //b[0] = new Ball(600, 200, 50);
    
    for(int i=0; i<500; i++){
        b[i] = new Ball(i*20, i*30, i*15);
    }
    
}

void draw(){
    background(255);
    
    for(int i=0; i<500; i++){
        b[i].move();
        b[i].bounce();
        b[i].drawBall();
    }
}