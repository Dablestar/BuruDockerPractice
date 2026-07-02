# FROM <- 특정 이미지명부터 시작 가능(보통 OS 이미지 이름 기입)
FROM node:22-slim
# 본인 node 버전. latest는 불안정하니 비추

# RUN <- 입력할 명령어들
# RUN npm install express
# 단점: 할게 많을수록 귀찮아짐, 버전 불일치 이슈 생길 수 있음


# 해결책: package.json을 복사 후 npm install 입력
COPY . . 


