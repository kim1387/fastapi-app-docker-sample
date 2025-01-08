
# FastAPI Docker 실습 프로젝트

## 프로젝트 소개
이 프로젝트는 Python의 FastAPI 애플리케이션을 Docker와 Docker Compose를 활용하여 컨테이너화하고 실행하는 실습을 다룹니다.

---

## 설치 및 실행

### 1. 프로젝트 클론 또는 다운로드
프로젝트 폴더를 다운로드하거나 클론합니다:
```bash
git clone <repository-url>
cd fastapi-app
```

### 2. Docker 이미지 빌드
```bash
docker build -t fastapi-app .
```

### 3. Docker 컨테이너 실행
```bash
docker run -d -p 8000:8000 fastapi-app
```

애플리케이션이 실행되면 브라우저에서 `http://localhost:8000`으로 접속하여 확인하세요.

---

## Docker Compose 활용

### 1. Docker Compose로 실행
```bash
docker-compose up --build
```

### 2. 애플리케이션 종료
```bash
docker-compose down
```

---

## 주요 엔드포인트

- **기본 경로**: `http://localhost:8000/`
- **API 문서 (Swagger UI)**: `http://localhost:8000/docs`
- **API 문서 (ReDoc)**: `http://localhost:8000/redoc`

---

## 유용한 Docker 명령어

### 컨테이너 관리
- 실행 중인 컨테이너 확인: `docker ps`
- 컨테이너 중지: `docker stop <컨테이너 ID>`
- 컨테이너 삭제: `docker rm <컨테이너 ID>`

### 이미지 관리
- 이미지 목록 확인: `docker images`
- 이미지 삭제: `docker rmi <이미지 ID>`

---

## 추가 학습 과제
1. FastAPI 엔드포인트를 추가하고 Docker Compose로 변경사항 반영
2. Docker Volume을 활용해 데이터 지속성 관리
3. Portainer 등 GUI 기반 Docker 관리 도구 사용해보기

---

## 참고
- [FastAPI 공식 문서](https://fastapi.tiangolo.com/)
- [Docker 공식 문서](https://docs.docker.com/)
