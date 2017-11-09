// 1000 밀리세컨마다 한번씩 실행되는 예제 
// 이 예제에서는, 1초마다 한번, randomNo 변수에 20에서 80사이의 랜덤한 값을 계산하여 적용한다.

int lastCheckTime;
float randomNo = 30;

void setup(){
    size(800, 800);
    frameRate(60);
    
    lastCheckTime = millis();
}

void draw(){
    if(millis() - lastCheckTime > 1000){
        randomNo = random(20, 80);
        lastCheckTime = millis();
    }
    
    println(randomNo);
}