import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;    // 출력 버퍼
Oscil wave;         // 소리 생성
Oscil wave2;

int lastCheckTimer;
float randomF = 440;

void setup(){
    size(1024, 600);
    
    minim = new Minim(this);
    // 출력버퍼 세팅
    out = minim.getLineOut(minim.MONO, 1024);
    // 소리 생성 세팅 (사인파형을, 440Hz, 100%크기로 세팅)
    wave = new Oscil(220, 0.3, Waves.SINE);
    wave2 = new Oscil(440, 0.2, Waves.TRIANGLE);
    
    // 생성되는 소리를 출력버퍼에 연결
    wave.patch(out);
    wave2.patch(out);

    lastCheckTimer = millis();
}

void draw(){
    background(0);
    
    
    if(millis() - lastCheckTimer > 500){
        randomF = random(220, 880);
        lastCheckTimer = millis();
    }
    
    // 주파수를 세팅하는 함수 
    //wave.setFrequency(주파수);
    
    // 마우스 X좌표로 주파수 바꾸기 (map 함수 사용하기)
    // 주파수의 값이 마우스의 X좌표에 따라 바뀌도록 map 함수를 사용하여 
    // wave.setFrequency()에 적용한다.
    float f  = map( mouseX, 0, 1024, 220, 880);
    float f2 = map( mouseY, 0,  600, 200, 400);
    wave.setFrequency(randomF);
    wave2.setFrequency(f2);
    
    stroke(255);
    strokeWeight(5);
    
    // 버퍼에 들어있는 값을 이용하여 파형 그리기
    for(int i=0; i<out.bufferSize()-1; i++){
        point(i, out.left.get(i) * 200 + 300);
    }
}