import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;    // Minim 클래스 변수 선언 
AudioPlayer player;    // 사운드를 불러와 재생하는 오디오 플레이어 클래스 변수 선언

float volume = 0;    // 볼륨값을 기록해서 저장하는 변수

// 세팅 (초기화)
void setup(){
    size(600, 600);
    // minim 클래스 초기화
    minim = new Minim(this);
   
    player = minim.loadFile("abandon.mp3", 1024);    
    
    // 플레이어를 재생한다.
    player.play();
    pixelDensity(displayDensity());
}

// 계속 반복 실행 (그리는 역할) 

void draw(){
    background(volume);
    //fill(volume, 40);
    //rect(0, 0, width, height);
    
    strokeWeight(5);
    volume = 0;
    
    stroke(255);
    
    //strokeWeight(5);
    //translate(width/2, height/2);
    //point(player.left.get(0)* 200 + 400, 0);
    
    for(int i=0; i<player.bufferSize() -1; i++){
        // 회전시킬 각을 저장할 변수 선언
        float rotateAngle = 0; // 라디안 값!
        rotateAngle = map(i, 0, player.bufferSize()-1, 0, 2*PI);
        println(rotateAngle);
        // 좌표계의 중심을 이동시킨다.
        pushMatrix();
        translate(width/2, height/2);
        rotate(rotateAngle);
        point(player.left.get(i)*50 + 200, 0);
        popMatrix();
        
    //    // 버퍼의 모든 값을 죄다 더한다. (값을 절대값을 취해야 한다!)
    //    volume = volume + abs(player.left.get(i));
    }
    
    // 왼쪽채널의 레벨값 (RMS)
    //player.left.level();
    
    
    volume = map(player.left.level(), 0, 0.2, 0, 255);
    //println(volume);
}