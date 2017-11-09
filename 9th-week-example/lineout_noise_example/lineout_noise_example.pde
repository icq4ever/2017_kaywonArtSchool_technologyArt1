import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// 노이즈 소리 내기 실습

Minim minim;
AudioOutput out;    // 출력 세팅을 위한것
Noise noise;    // 노이즈 소리를 내는 클래스 인스턴스 선언

void setup(){
    minim = new Minim(this);
    out = minim.getLineOut(minim.MONO, 1024);
    
    // 노이즈를 세팅한다.
    noise = new Noise(1);    // 최대 크기로 노이즈를 생성
    
    // 노이즈 소리 신호를 버퍼에 적용한다.
    noise.patch(out);
}

void draw(){
}