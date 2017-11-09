import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;    // minim 사운드 클래스 인스턴스를 선언
AudioInput in;    // 오디오 인풋 클래스 인스턴스를 선언

void setup(){
    size(1024, 600);
    background(0);
    
    // 클래스의 인스턴스를 초기화한다. (생성자)
    minim = new Minim(this);
    // 인풋 설정 (모노, 버퍼사이즈 1024로 설정)
    in = minim.getLineIn(minim.MONO, 1024);    
}

void draw(){
    background(0);
    
    for(int i=0; i<in.bufferSize()-1; i = i+20){
        float value = in.left.get(i);
        //println(value);    // 버퍼안의 값을 실제로 출력해보자
        
        // 양념을 쳐보자
        if(i<512) stroke(map(i, 0, 512, 0, 255));
        else      stroke(map(i, 513, 1023, 255, 0));
        
        strokeWeight(5);
        //strokeCap(SQUARE);
        
        // 점으로 그리기
        //point(i, value * 300 + 300);
        
        // 라인으로 그리기 
        line(i, -value * 300 + 300, i, value * 300 + 300);
    }
}