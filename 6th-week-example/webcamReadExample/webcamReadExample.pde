import processing.video.*; 

Capture webcam;

void setup(){
    size(640, 480);
    
    // 컴퓨터에 어떤 장치가 있는지 확인하기 위해서
    // String(문자열)의 배열을 만들어 불러온다.
    String[] cameras = Capture.list();
    
    for(int i=0; i < cameras.length; i++){
        println("["+ i +"] : " + cameras[i]);
    }
    
    // 실제로 초기화하기
    webcam = new Capture(this, cameras[3]);
    
    webcam.start();
}

void draw(){
    // 웹캠이 새 프레임을 불러올 준비가 되면... 데이터를 불러와라 ..
    if(webcam.available() == true){
        webcam.read();
    }
    
    image(webcam, 0, 0, 640, 480);
}