// 오디오 파일을 불러와서 재생
import processing.sound.*;   

SoundFile file;    // 클래스의 인스턴스(변수)를 선언
void setup(){
    size(400, 400);
    
    // 인스턴스의 생성자를 이용하여, 초기화해준다. (오디오 파일 불러오기)
    // data폴더 안에 들어있는 사운드파일명을 전달해준다.
    file = new SoundFile(this, "07 Daydream.mp3");
    file.play();
}

void draw(){
    background(0);
    
    // 모노파일만 지원되는 패닝 기능.
    //float panning;
    //panning = map(mouseX, 0, width, -1, 1);
    //file.pan(panning);
    
    float volumeValue;    // 
    volumeValue = map(mouseY, 0, height, 1, 0);
    file.amp(volumeValue);
    
    println(volumeValue);
}

void mousePressed(){
    float playHead;    // 점프할 시간을 계산해서 담을 변수를 선언.
    
    // 마우스 좌표를, 0에서 음악파일의 길이사이의 값으로 변환하여, 
    // playHead변수에 넣는다.
    playHead = map(mouseX, 0, width, 0, file.duration());
    
    // 계산된 초로 점프한다. 
    file.jump(playHead);
}