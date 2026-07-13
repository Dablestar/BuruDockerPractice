# nginx가 설치되어 있는 기본 이미지
FROM nginx:1.31.2-alpine

# conf 파일 옮기기
COPY ./myconfig1.conf /etc/nginx/conf.d/myconfig1.conf
# default.conf 제거
RUN rm /etc/nginx/conf.d/default.conf

# 80번 포트 개방
EXPOSE 80

# nginx 실행
CMD ["nginx", "-g", "daemon off;"]