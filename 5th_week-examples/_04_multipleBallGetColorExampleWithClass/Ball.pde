class Ball {
    // 클래스 변수 선언
    float x;        // 원의 중심 x좌표 
    float y;        // 원의 중심 y좌표
    float size;     // 원의 크기
    float vx;        // x방향의 velocity (속도)
    float vy;        // y방향의 속도
    color c;    // 원의 색을 담는 변수 선언.

    // 클래스 생성자, 무조건 한번만 실행된다.
    // 초기화 하는 내용이 들어간다.
    Ball(float _x, float _y, float _size) {
        x = _x;
        y = _y;
        size = _size;
        vx = 10;
        vy = 20;
    }

    void move() {
        // 움직이게 하는부분
        x = x + vx;
        y = y + vy;
    }

    void bounce() {
        // 튕기는 부분 
        if (x > 400 || x < 0) {         // 여기서는 이미지의 가로 크기로 지정해줘야 한다. (400)
            vx = -vx;
        }
        if (y > 495 || y < 0) {         // 여기서는 이미지의 세로 크기로 지정해줘야 한다. (495)
            vy = -vy;
        }
    }
    
    // bounce의 범위를 이미지를 전달하게 하여 자동으로 설정할 수도 있다.
    // void bounce(PImage img){
        //if (x > img.width || x < 0) {         
        //    vx = -vx;
        //}
        //if (y > img.height || y < 0) {        
        //    vy = -vy;
        //}
    //}
 
    void drawBall() {
        // 그리는 부분 
        fill(c);    // 까만색으로 채워서..
        ellipse(x, y, size, size);
    }
    
    void getColor(PImage img){
        c = img.get(int(x), int(y));
    }
}