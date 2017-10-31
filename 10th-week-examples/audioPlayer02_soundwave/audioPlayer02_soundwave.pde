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
    size(1024, 600);
    // minim 클래스 초기화
    minim = new Minim(this);
    
    // 오디오 플레이어 초기화
    // 불러올 파일명,
    // 버퍼의 크기를 1024로 지정
    player = minim.loadFile("abandon.mp3", 1024);    
    
    // 플레이어를 재생한다.
    player.play();
}

// 계속 반복 실행 (그리는 역할) 

void draw(){
    background(0);
    
    // 버퍼에 접근하여 값을 얻어오고, 그것을 그린다. 
    // 플레이어의 버퍼사이즈는 player.bufferSize() 로 알아낼 수 있다.
    
    
    
    strokeWeight(volume);
    // for문을 사용하여, 방번호인 0번부터, 1023까지 1씩 증가하면서 ...
    //println(player.getGain());
    
    volume = 0;
    
    for(int i=0; i<player.bufferSize() -1; i++){
        // 실제 버퍼안의 값을 얻어온다.
        //player.left.get(i);
        //line(i, height/2, i, height/2 + player.left.get(i)*300);
        stroke(0, 255, 0);
        point(i, player.left.get(i) * 300 + height/2 - 150);
        
        stroke(255, 255, 0);
        point(i, player.right.get(i) *300 + height/2 + 150);
        
        // 버퍼의 모든 값을 죄다 더한다. (값을 절대값을 취해야 한다!)
        volume = volume + abs(player.left.get(i));
    }
    

    // 더한 값을 버퍼 크기로 나눈다 (평균값)
    //volume = volume / player.bufferSize();
    //volume = map(volume, 0, 0.2, 1, 20);
    
    // 계산할 필요없이 level()이라는 함수를 사용하면 된다 !
    volume = map(player.left.level(), 0, 0.5, 1, 10);
    // 값을 출력
    println(volume);
    
    
    
    
    
}