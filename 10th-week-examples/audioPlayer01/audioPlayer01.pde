import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;    // Minim 클래스 변수 선언 
AudioPlayer player;    // 사운드를 불러와 재생하는 오디오 플레이어 클래스 변수 선언

// 세팅 (초기화)
void setup(){
    // minim 클래스 초기화
    minim = new Minim(this);
    
    // 오디오 플레이어 초기화
    player = minim.loadFile("music.mp3");
    
    // 플레이어를 재생한다.
    player.play();
}

// 계속 반복 실행 (그리는 역할)
void draw(){
}