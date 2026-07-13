
## 개념
Docker Desktop

Images: 밀키트(OS, 환경 셋팅한거, 라이브러리, 소스코드)

e.g.) 웹서버 소스코드 > AWS에 올리기 > 코드실행환경/라이브러리/실행 ...
Docker 사용 시 -> AWS에 이미지 올리기 > AWS에서 Docker 설치 후 실행

컨테이너를 포트에 할당 가능

태그는 보통 버전 기록
## Docker 명령어
docker image ls : 이미지 리스트
docker pull [imageName] : 이미지 pull
docker run [imageName] [tagName] : 이미지 실행
docker build -t (imageName:tagName) (destination) : 이미지 생성



## npm 관련 명령어

npm init -y: 폴더 초기화
nodemon [server filename]: 서버 live edit
pm2 : 실제 사용하는 라이브러리


## Dockerfile Syntax

#### 내 프로그램을 이미지로 만들기
1) Dockerfile 만들기
2) 이미지에 뭐 넣을지 작성
3) docker build

- 어떤 OS를 쓸건지
- 어떤 프로그램을 쓸건지
- 어떤 터미널 명령어를 실행할건지
- 어떤 파일을 집어넣을건지

FROM <- 특정 이미지명부터 시작 가능

RUN <- 입력할 명령어들
주의: RUN npm install 같은 형태로 사용하는것 보단 RUN ["npm", "install"]같은 형태로 사용하는걸 권장

WORKDIR <- 폴더 이동(cd랑 비슷함)

COPY (target) (destination) <- 파일 복사
. <- 현재경로


## DockerHub 사용하기

### Push
회원가입 -> Repo 만들기(private repo는 무료계정일 경우 하나만 만들 수 있음) -> 앱으로 돌아와 Push to Docker Hub
안되면
cmd -> docker tag [imageName:tagName] [repoName/tagName] (이름 변경 명령어) -> docker push [repoName/tagName] 안되면 docker login

### Pull
docker pull [imageName:tagName]

여러 종류의 이미지가 있다면? (e.g. 웹서버 이미지, 프론트 이미지, DB 이미지) => 별도의 repo에 올리는게 보통임. 다만 소스코드가 들어있는 이미지는 private repo에 넣을것


