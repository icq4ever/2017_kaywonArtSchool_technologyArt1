void setup(){
    size(400, 400);
    frameRate(30);
}

void draw(){
    // 배경색을 검은색으로 칠하는 명령어
    //background(0);
    
    // background명령은 알파값을 적용할 수 없다.
    // 대신, 화면 전체를 덮는 사각형을, black색과 알파값을 이용하여
    // 그리게 함으로써, 잔상이 남는 효과를 쉽게 구현할 수 있다.
    fill(0, 5);    // 검은색을, 5%의 투명도로 설정
    
    // 캔버스의 전체 영역을 
    // 매 프레임마다 5%의 투명도를 갖도록 그리게 되므로
    // 잔상이 남는듯한 효과가 된다.    
    rect(0, 0, width, height);    
        
    fill(255);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
}