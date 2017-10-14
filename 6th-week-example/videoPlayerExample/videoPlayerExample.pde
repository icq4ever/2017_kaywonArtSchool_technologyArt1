import processing.video.*;    // 비디오 라이브러리 불러오기
                              // Movie, Capture 클래스를 사용할 수 있다.
                              
Movie movie;  // 무비 클래스의 인스턴스를 생성한다. 
              // 무비 변수 선언 (이해하기 쉬운 설명.. 정확하지 않음);
                              
void setup(){
    size(640, 360);
    
    // 생성자를 이용하여 인스턴스를 초기화한다.
    // this : 소유자 (명령의 주체)
    // "" : 불러올 파일명. (data)
    movie = new Movie(this, "transit.mov");
    movie.loop(); // 반복 재생 
}

void draw(){
    image(movie, 0, 0);
}

// 비디오를 재생할때 반드시 필요한 이벤트 함수
// 새 프레수임이 읽을 준비가 되면 자동으로 호출되는 이벤트 함  
void movieEvent(Movie m){
    m.read();
}