PImage beemo;

void setup(){
    size(202, 250);
    
    // beemo 라는 이미지 변수에 download.png파일을 담는다.
    beemo = loadImage("download.png");
}

void draw(){
    image(beemo, 0, 0);
    
    color c ; // 컬러를 저장할 변수를 만든다.
    c = beemo.get(mouseX, mouseY);    // beemo변수에 담긴 이미지의 100, 100 픽셀의 컬러값을 얻어와서 c에 담는다.
    
    fill(c);
    ellipse(mouseX, mouseY, 50, 50);
}