void setup(){
    size(400, 400);
    frameRate(30);
}

void draw(){
    //background(0);
    
    fill(0, 5);    // 아주 투명한 값을 갖는 검은색.
    rect(0, 0, width, height);
    
       
        
    fill(255);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
}