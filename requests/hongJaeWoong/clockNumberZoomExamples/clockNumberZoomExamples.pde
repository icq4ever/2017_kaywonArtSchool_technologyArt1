// 배열 (1~12까지의 각 숫자가 몇배로 그려질지를 저장해두는 배열)
float numberZoom[] = new float[12];

PFont font;
float fontSize = 48;

// 숫자를 넣으면 계산해주는 함수
float calcAngle(int no){
    return no * 30;
}

void setup(){
    size(400, 400);
    
    font = loadFont("Serif-48.vlw");
    for(int i=0; i<12; i++){
        numberZoom[i] = 1;
    }
}

void draw(){
    background(0);
    for(int i=1; i<13; i++){
        drawClockNo(i, numberZoom[i-1]);
    }
    
    updateNumZoom();
}

void drawClockNo(int no, float _zoom){
    // 숫자를 넣으면 몇도회전을 할것인지
    // 계산해주는 함수를 사용 
    float angle = calcAngle(no) - 90;
    
    pushMatrix();
    translate(width/2, height/2);
    float locX, locY;
    
    locX = 150 * cos(radians(angle));
    locY = 150 * sin(radians(angle));
    
    //scale(_zoom);
    textFont(font, fontSize * numberZoom[no-1]);
    textAlign(CENTER, CENTER);
    text(no, locX, locY);
    popMatrix();
}

// 초침의 위치에 따라 , 각 숫자의 zoom값을 계산해서
// numberZoom배열의 값을 업데이트 하는 함수 
void updateNumZoom(){
    println(second()/5);
    for(int i=0; i<12; i++){
        if(second()/5 == i){
            numberZoom[i] = 2;
        } else {
            numberZoom[i] = 1;
        }
    }
}