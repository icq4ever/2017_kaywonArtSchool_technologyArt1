void setup(){
    size(400, 400);
}

void draw(){
    background(255);
    
    //drawX(50, 50);        // 정의한 함수를 호출한다.!
    //drawX(100, 100);        // 정의한 함수를 호출한다.!
    
    for(int i=0; i<5; i++){
        for(int j=0; j<5; j++){
            drawX(i*50, j*50);
        }
    }
    
    for(int i=0; i<100; i++){
        drawY(i*10);
    }
}

void drawX(int x, int y){
    line(10+x, 10+y, 50+x, 50+y);
    line(50+x, 10+y, 10+x, 50+y);
}

void drawY(int y){
    line(0, y, 400, y);
}