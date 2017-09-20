//변수 선언
float x;        // 원의 중심 x좌표 
float y;        // 원의 중심 y좌표
float size;     // 원의 크기
float vx;        // x방향의 velocity (속도)
float vy;        // y방향의 속도

void setup(){
    size(800, 800);
    
    // 변수 초기화
    x = 100;
    y = 400;
    size = 100;
    vx = 10;
    vy = 20;
}

void draw(){
    background(255);    // 배경색은 항상 흰색으로 하자..
    
    // 그리는 부분 
    fill(0);    // 까만색으로 채워서..
    ellipse(x, y, size, size); 

    // 움직이게 하는부분
    x = x + vx;
    y = y + vy;

    // 튕기는 부분 
    if(x > 800 || x < 0)    { vx = -vx; }
    if(y > 800 || y < 0)    { vy = -vy; }
}