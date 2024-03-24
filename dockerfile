# Node.js 버전을 지정하는 기본 이미지를 선택합니다.
FROM node:14

# 앱 디렉터리를 생성하고 작업 디렉터리로 설정합니다.
WORKDIR /usr/src/app

# 애플리케이션의 종속성 파일을 컨테이너에 복사합니다.
COPY package*.json ./

# 패키지를 설치합니다.
RUN npm install

# 애플리케이션의 소스 코드를 컨테이너에 복사합니다.
COPY . .

# 앱이 3000 포트에서 실행됨을 나타냅니다.
EXPOSE 3000

# 애플리케이션을 실행합니다.
CMD [ "node", "app.js" ]
