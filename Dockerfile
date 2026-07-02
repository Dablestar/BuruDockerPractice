# FROM <- 특정 이미지명부터 시작 가능(보통 OS 이미지 이름 기입)
FROM node:22-slim
# 본인 node 버전. latest는 불안정하니 비추

# RUN <- 입력할 명령어들
# RUN npm install express
# 단점: 할게 많을수록 귀찮아짐, 버전 불일치 이슈 생길 수 있음

# WORKDIR [dir] <- 폴더 이동(cd랑 비슷함)
WORKDIR /app

# 해결책: package.json을 복사 후 npm install 입력
# COPY [target] [destination]
# . <- 현재 경로
COPY . . 

# package.json에 있던 library 전부 설치
# RUN npm install <- /bin/sh -c npm install 실행됨. 호환성 문제 발생 가능

# 보통은 이게 추천됨
RUN ["npm", "install"]

# EXPOSE [PORTNO] <- 사용할 포트번호. 메모 용도이긴 함
EXPOSE 5000

# 마지막 명령어는 CMD 혹은 ENTRYPOINT 사용
CMD ["node", "server.js"]

# 사실 docker init 명령어 써도 자동으로 채워주긴 함
# AI한테 시켜도 됨




