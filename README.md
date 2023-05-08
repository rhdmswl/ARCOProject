<div align="center">

<img src="https://i.imgur.com/PdXRRbb.png">

<div align="left">
  
# 📌목차

1. [📄프로젝트 설명](#-프로젝트-설명)
2. [💻기술 스택](#-기술-스택)
3. [👥멤버 구성 및 역할](#-멤버-구성-및-역할)
4. [🏗️ERD](#%EF%B8%8F-erd)
5. [💬기능 명세서](#-기능-명세서)
6. [⚠️트러블 슈팅](#%EF%B8%8F-트러블-슈팅)
  
</div>
<br>
<br>
<br>

# 📄 프로젝트 설명

#### 주기적으로 업데이트 되는 전시 정보들을 보여주며,<br>
#### 전시의 평점과 한줄평을 남기고 전시에 관심이 있는 다양한 사람들과 소통할 수 있는 웹사이트 <br>
#### 진행 기간 : 2023.03.29 ~ 2023.05.09

[ARCO 팀 노션](https://www.notion.so/ARCO-cf3fb9406b27433189c14aba503970c5)<br>
[ARCO 사이트](https://arco.today/)
  
<br><br><br>

# 👥 멤버 구성 및 역할

<a href="https://github.com/rhdmswl/ARCOProject/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=rhdmswl/ARCOProject" />
</a>

<br><br>
<img src="https://i.imgur.com/cf5j6rw.png" width="600">
  
<br><br><br>

# 💻 기술 스택

### ⭐ Platforms & Languages ⭐

### Front End

![html](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white)
![css](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white)
![javascript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white)

### Back End
![Spring](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=white)
![Java](https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=Java&logoColor=white)
![mysql](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white)
![ApacheTomcat](https://img.shields.io/badge/ApacheTomcat-F8DC75?style=for-the-badge&logo=ApacheTomcat&logoColor=white)
![MyBatis](https://img.shields.io/badge/MyBatis-000000?style=for-the-badge&logo=MyBatis&logoColor=white)
![json](https://img.shields.io/badge/json-000000?style=for-the-badge&logo=json&logoColor=white)

### ☁️ AWS ☁️

![amazonaws](https://img.shields.io/badge/amazonaws-232F3E?style=for-the-badge&logo=amazonaws&4a154b=white)
![amazonrds](https://img.shields.io/badge/amazonrds-527FFF?style=for-the-badge&logo=amazonrds&4a154b=white)

### 🛠️ Tools 🛠️

![Jira](https://img.shields.io/badge/Jira-0052CC?style=for-the-badge&logo=Jira&logoColor=white)
![slack](https://img.shields.io/badge/slack-4a154b?style=for-the-badge&logo=slack&4a154b=white)
![notion](https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&4a154b=white)  
![github](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&181717=white)

<br><br><br>
  
# 🏗️ ERD
  
<img src="https://i.imgur.com/SBAB9f9.png" width="600">

<br><br><br>
  
# 💬 기능 명세서

<div align="left">
  
<details>
<summary> 메인페이지 </summary>
<div markdown="1">

- 상단바
    - 네비게이션을 통해 해당 페이지로 이동 또는 로그인/로그아웃을 할 수 있음
        - 마이 페이지
        - 로그인/로그아웃
        - 회원 가입
- 헤더
    - 로고 클릭 시 메인 페이지로 이동
    - 메뉴 클릭 시 해당 페이지로 이동
        - 전시 목록
        - 커뮤니티
        - 어바웃
- 추천 순으로 정렬된 전시 목록 슬라이드 형태로 조회 가능
    - 전시 포스터 클릭 시 해당 전시 상세 페이지로 이동
- ARCO 소개와 커뮤니티의 BEST 게시판 리스트 조회 가능
    - 더보기 클릭 시 해당 페이지로 이동
- 최신순으로 정렬 된 전시 목록 조회 가능
    - 전시 포스터 클릭 시 해당 전시 상세 페이지로 이동

</div>
</details>

<details>
<summary> 전시 목록 페이지 </summary>
<div markdown="1">

- 종료일순으로 정렬된 전시 목록 조회 가능
    - 전시 포스터 클릭 시 해당 전시 상세 페이지로 이동
    - 종료일순, 별점순, 조회순으로 정렬 방식 변경 가능
- 제목과 날짜로 전시 검색 가능
- 매주 월요일 전시 API 4:00 AM 자동 업데이트

</div>
</details>
  
<details>
<summary> 전시 상세 페이지 </summary>
<div markdown="1">

- 전시 정보 조회 가능
    - 유저가 등록한 평균 별점 조회 가능
    - 티켓 예매 버튼 클릭 시 예매 사이트로 이동
    - 찜하기 버튼 클릭 시 모달창으로 마이 페이지 이동하며 마이 페이지의 찜 캘린더에 전시 일정 등록
- 전시장 위치 조회
    - 전시장 위치 길 찾기 조회 가능
    - 전시장 근처 주차장, 음식점, 카페 조회 가능
    - 주차장, 음식점, 카페 클릭 시 해당 장소의 지도 링크로 이동
- 한줄평
    - 별점과 함께 50자 이내의 한줄평 작성 가능
    - 로그인하지 않은 유저는 작성할 수 없음
    - 작성자 본인만 한줄평 수정, 삭제 가능
  
</div>
</details>
  
<details>
<summary> 커뮤니티 목록 페이지 </summary>
<div markdown="1">

- BEST, 자유, 전시, 정보 게시판 버튼 클릭 시 해당 게시판으로 이동
- 제목, 작성자, 내용으로 게시판 별 게시글 검색 가능
- 게시글 클릭 시 해당 글 상세 페이지로 이동
- BEST 게시판은 추천수 10개 이상의 글만 조회할 수 있으며 글 작성 불가능
- 글 작성 페이지로 이동 가능
    - 로그인하지 않은 사용자는 글 작성할 수 없음
  
</div>
</details>

<details>
<summary> 커뮤니티 글 작성 페이지 </summary>
<div markdown="1">

- 유저가 글을 작성할 게시판을 선택할 수 있으며 작성 버튼을 누른 게시판 위치가 디폴트로 설정되어 있음
- 유저의 닉네임은 고정 값으로 들어 있으며 글 작성 창에서 변경 불가능
- 목록 버튼을 클릭하면 커뮤니티 목록 페이지로 이동
  
</div>
</details>
  
<details>
<summary> 커뮤니티 글 상세 페이지 </summary>
<div markdown="1">

- 게시글
    - 로그인 하지 않은 유저는 게시글과 댓글 조회만 가능
    - 게시글 작성자 본인만 수정, 삭제 가능
        - 작성자 본인에게만 수정, 삭제 버튼 활성화
    - 게시글 하단의 추천 버튼 클릭 시 추천 수 증가하며 재클릭 시 추천 취소 되며 추천 수 감소
- 댓글
    - 댓글 작성 시 유저의 닉네임은 고정 값으로 들어 있으며 댓글 작성란에서 변경 불가능
    - 댓글 작성자 본인만 수정, 삭제 가능
        - 작성자 본인에게만 수정, 삭제 버튼 활성화
  
</div>
</details>
  
<details>
<summary> 회원가입 페이지 </summary>
<div markdown="1">

- 회원가입
    - 헤더의 Sign up 버튼 클릭시 개인 정보 처리 방침에 동의 체크 후 회원 가입 버튼 활성화 되어 페이지 이동 가능
    - 정해진 형식에 맞게 기입해야 회원가입 가능
        - 아이디
            - 4자 이상 10자 이하의 영문 대소문자와 숫자 조합이어야 한다.
            - admin으로 시작하는 아이디와 중복된 아이디는 사용 불가능
            - 공백을 포함할 수 없고 한글 사용 불가능
        - 비밀번호
            - 8자 이상 18자 이하의 영어 소문자/숫자/특수문자 조합이어야 한다.
            - 비밀 번호와 비밀 번호 확인이 일치해야 한다.
        - 닉네임
            - 숫자만 입력하거나 공백을 포함한 닉네임은 사용 불가능
            - 2자 이상 10자 이하의 영문, 한글, 숫자 조합이어야 한다.
            - 관리자 혹은 admin으로 시작하는 닉네임, 중복된 닉네임은 사용 불가능
        - 이메일
            - 이메일 주소는  @기호를 포함해야하며, @기준으로 왼쪽은 영문 대/소문자, 숫자, 특수문자(., _, %, +, -)로 이루어져야 하며, 
              오른쪽은 도메인 주소가 오며, '.(점)'으로 구분된 문자열로 이루어져야한다.
            - 입력한 이메일로 인증 번호가 발송 되며 올바른 인증 번호를 입력해야만 유효성 검사 통과 가능
        - 핸드폰 번호 : 공백을 포함할 수 없고, 10자 또는 11자의 숫자로만 이루어져야한다.
- 회원가입이 완료되면 웰컴 메시지와 함께 로그인 페이지로 이동
- 이미 계정이 있는데 해당 페이지에 들어온 경우 취소 버튼 클릭하여 메인 페이지로 이동
  
</div>
</details>

<details>
<summary> 로그인 페이지 </summary>
<div markdown="1">

- 로그인
    - 아이디와 비밀 번호 잘못 입력 했을 시 오류 메세지 출력
    - 아이디 찾기
        - 가입 시 작성한 닉네임과 전화번호 입력 하면 모달창에 작성자의 아이디 출력
    - 비밀번호 찾기
        - 가입시 작성한 아이디와 이메일을 입력하고 메일 전송 버튼 클릭 시 임시 비밀번호가 발급되어 이메일로 발송
        - 발급된 임시 비밀번호로 로그인 가능
- 로그인 후 메인 페이지로 이동
  
</div>
</details>
  
<details>
<summary> 마이 페이지 </summary>
<div markdown="1">

- 찜한 전시 일정
    - 전시 상세 페이지에서 찜하기 버튼 클릭 시 캘린더에 일정 등록
    - 찜한 전시가 2개 이상일 시 +more 버튼을 클릭하여 조회 가능
- 유저가 작성한 한줄평/게시글/댓글 
    - 각각의 한줄평, 게시글, 댓글에는 링크가 걸려 있으며 클릭 시 해당 페이지로 이동
- 유저 정보
    - 유저의 닉네임 변경할 수 있으며 유효성 검사를 통과해야 최종적으로 변경 가능
    - 비밀번호 변경
        - 새 비밀번호와 새 비밀번호 확인을 입력하여 유효성 검사와 일치 여부를 확인 후 변경 가능
    - 회원 탈퇴
        - 비밀번호 입력하여 탈퇴 할 수 있으며 안내 메세지 확인 후 굿바이 메세지 출력
</div>
</details>
  
<details>
<summary> 관리자 페이지 </summary>
<div markdown="1">

- 관리자 계정으로 로그인 시 상단바에 Admin Page 버튼 활성화
- 회원 관리
    - 전체 사용자의 아이디, 닉네임, 이메일 목록 조회 가능
    - 회원 삭제 가능하며, 삭제 시 해당 회원이 작성한 한줄평, 게시글, 댓글 모두 삭제됨
- 한줄평 관리
    - 한줄평 클릭 시 해당 한줄평으로 이동
    - 관리자 권한으로 활성화된 삭제 버튼으로 한줄평 삭제 가능
- 게시글 관리
    - 게시글 클릭 시 해당 게시글 상세 페이지로 이동
    - 관리자 권한으로 활성화된 삭제 버튼으로 게시글 삭제 가능
    - 게시글이 작성된 게시판 위치 이동 가능
- 댓글 관리
    - 댓글 클릭 시 해당 댓글 상세 페이지로 이동
    - 관리자 권한으로 활성화된 삭제 버튼으로 댓글 사제 가능

</div>
</details>

</div>
  
<br><br><br>
  
# ⚠️ 트러블 슈팅
<div align="left">

<details>
<summary> 공공데이터 API </summary>
<div markdown="1">

- ISSUE
  공공데이터 API를 가져오는 과정에서 필요한 정보를 못 불러 오는 문제 발생(가격, 티켓 URL 등 여러가지 데이터가 제외되어 있음)

- SOLVE
  1. 호출url을 변경하여 다른 정보를 가져오도록 진행 -> 똑같이 원하는 정보를 모두 가지고 올 수 없었음
  2. 호출url을 여러개 사용하여 원하는 데이터를 가지고 올 수 있도록 호출 
      ->  기간별 공연/전시목록(period)에 있는 전시 seq를 추출하여 공연/전시 상세 정보 조회(d?seq={공연/전시 번호}) seq에 대입했고 
          모든 정보를 추출하여 이용 가능하도록 해결
</div>
</details>
  
<details>
<summary> API dataformatexception </summary>
<div markdown="1">

- ISSUE
  API를 DB에 넣는 과정에서 dataformatexception 발생

- SOLVE
  1. 기술문서에는 불러오는 데이터를 포함하고 있지 않았기 때문에 try-catch문으로 불러오는 코드 하나씩 체크를 해본 후 문제가 발생하는 부분을 발견,
     데이터(날짜관련 데이터에서 문제 발생)의 타입을 Date에서 String으로 변경 후 실행 -> 동일한 오류 발생
  2. 두가지 타입으로 저장되어 있는 부분을 발견 후 String으로 db의 컬럼을 수정하고 불러오는 데이터의 타입을 String으로 변경하여 저장할 수 있도록 해결
</div>
</details>
  
  
<details>
<summary> Date 400에러 </summary>
<div markdown="1">

- ISSUE
  검색 부분에서 date 검색 시 400에러 발생

- SOLVE
  1. Date 검색 부분을 처리하기위해 input 태그의 type date를 사용하여 날짜를 받아오고 받아온 날짜보다 전시 종료일이 큰 데이터를 가져오도록 구현
하고 dto(Critrtia)부분에서 date를 받아올 수 있도록 Date타입의 date 필드를 작성 했지만 400에러 발생
  2. input태그의 date는 String으로 데이터를 처리하기 때문에 dto에서 date 타입이 아닌 String으로 변경하여 해결
</div>
</details>
  
<details>
<summary> AWS의 메모리 부족 </summary>
<div markdown="1">

- ISSUE
  AWS Free Tier의 메모리가 1GB 밖에 되지않아, 웹 배포를 진행시 메모리가 부족하여 2~3일 이후 서버가 다운되는 현상 발생

- SOLVE
  1. 현실적으로 인스턴스 업그레이드는 비용이 들기 때문에, SWAP 메모리 공간을 할당해줌
  2. SWAP memory 공간은 HDD(SSD 포함) 의 약 2GB 할당해줌
  3. RAM에 비해서 성능은 떨어지지만, 서버 부하 없이 배포를 진행 할 수 있게됨
</div>
</details>
  
<details>
<summary> Database에서의 max connection </summary>
<div markdown="1">

- ISSUE
  AWS RDS를 사용 중, max connection 오류 발생. 다수의 인원이 개발을 하며 DB에 접근한 후, 연결을 종료 시키지 않아 접속이 누적되고 있었음

- SOLVE
  hikari에서 maxlifetime을 줄여주고, AWS RDS 에서 max connection 제한을 최대한 늘려줌
</div>
</details>
  
<details>
<summary> 커뮤니티에서 뒤로가기 시 파라미터 누적 </summary>
<div markdown="1">

- ISSUE
  CRUD 기능 구현 중, 게시글 상세 조회 후 뒤로가기 진행 시, 파라미터가 누적되어 다른 게시글 상세로 이동하면 이전의 게시글로 이동하는 오류 발생

- SOLVE
  기존 구현 로직에 의하면 클릭한 해당 postId를 받아와 파라미터로 추가하여 해당 게시글로 이동
  -> 파라미터로 추가하는 방식이 아닌 postId와 brdId를 직접 주소로 넘겨 이동하는 방식으로 수정
</div>
</details>

<details>
<summary> JavaMailSenderImpl 활용 </summary>
<div markdown="1">
- 회원가입 - 이메일 인증 
    - 회원가입 시 이메일 인증을 구현하여 무분별한 회원가입을 방지함. email-context.xml로 bean을 등록한 후 스프링의 JavaMailSenderImpl 클래스를 활용해 MailSendService 클래스를 제작함. Random 클래스를 활용해 난수를 발생시키고 이메일 양식을 정한 후 이메일을 전송하는 로직으로 구현.
- 비밀번호 찾기 - 임시 비밀번호 발급
    - 비밀번호 찾기에서 임시 비밀번호를 이메일로 전송해주는 기능 구현. FindPwMailSendService 클래스를 제작하여 문자와 숫자로 이뤄진 임시 비밀번호를 해당 유저의 이메일로 전송함.

</div>
</details>


<details>
<summary> 마이페이지 메뉴별 영역 및 페이징 오류 해결 </summary>
<div markdown="1">

- ISSUE
  기존에는 나의 한줄평/게시글/댓글 메뉴 내부에 각각 한줄평, 게시글, 댓글에 대한 페이지 구분이 없었음. 이때 나의 한줄평/게시글/댓글 에서 한줄평이나   게시글 등 각 영역의 페이징 버튼을 클릭 시 화면이 새로고침되어 최초로 돌아가는 문제 발생.

- SOLVE
  나의 한줄평/게시글/댓글에 id 값을 주어 mypage_id를 1, 2, 3으로 구분. javascript로 function showSection을 제작하여 mypage_id에 따른 각각의     섹션에 해당하는 내용이 보이도록 수정. 이를 통해 페이징이 제대로 작동하고 각 영역에 해당하는 내용이 제대로 보이도록 하여 이슈 해결.

</div>
</details>

</div>
  
</div>
