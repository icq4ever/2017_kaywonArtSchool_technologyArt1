class Ball {
    // 클래스 변수 선언
    float x;        // 원의 중심 x좌표 
    float y;        // 원의 중심 y좌표
    float size;     // 원의 크기
    float vx;        // x방향의 velocity (속도)
    float vy;        // y방향의 속도

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
        if (x > 800 || x < 0) { 
            vx = -vx;
        }
        if (y > 800 || y < 0) { 
            vy = -vy;
        }
    }
    void drawBall() {
        // 그리는 부분 
        fill(0);    // 까만색으로 채워서..
        ellipse(x, y, size, size);
    }
}
