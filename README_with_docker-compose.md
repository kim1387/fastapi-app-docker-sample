
# FastAPI Docker 실습 프로젝트 (MySQL 포함)

## 프로젝트 소개
이 프로젝트는 Python의 FastAPI 애플리케이션과 MySQL 데이터베이스를 Docker와 Docker Compose를 활용하여 컨테이너화하고 실행하는 실습을 다룹니다.

---

## 설치 및 실행

### 1. 프로젝트 클론 또는 다운로드
프로젝트 폴더를 다운로드하거나 클론합니다:
```bash
git clone <repository-url>
cd fastapi-app
```

### 2. Docker Compose로 컨테이너 실행
```bash
docker-compose up --build
```

### 3. 애플리케이션 종료
```bash
docker-compose down
```

---

## 주요 엔드포인트

- **FastAPI 기본 경로**: `http://localhost:8000/`
- **API 문서 (Swagger UI)**: `http://localhost:8000/docs`
- **API 문서 (ReDoc)**: `http://localhost:8000/redoc`

---

## MySQL 정보
- **호스트**: `db`
- **포트**: `3306`
- **사용자 이름**: `user`
- **비밀번호**: `password`
- **데이터베이스 이름**: `test_db`

MySQL 컨테이너에 접속하려면 다음 명령을 사용하세요:
```bash
docker exec -it <mysql-container-id> mysql -u user -p
# 비밀번호: password
```

---

## Docker Compose 명령어

- **컨테이너 실행 및 빌드**:
  ```bash
  docker-compose up --build
  ```
- **백그라운드 실행**:
  ```bash
  docker-compose up -d
  ```
- **컨테이너 중지**:
  ```bash
  docker-compose down
  ```
- **실행 중인 서비스 확인**:
  ```bash
  docker-compose ps
  ```
- **특정 서비스 로그 확인**:
  ```bash
  docker-compose logs <서비스 이름>
  ```

---

## Docker 모니터링 명령어

- **실행 중인 컨테이너 확인**:
  ```bash
  docker ps
  ```
- **리소스 사용량 모니터링**:
  ```bash
  docker stats
  ```
- **로그 확인**:
  ```bash
  docker logs <컨테이너 ID>
  ```
- **중지된 컨테이너 포함 전체 목록**:
  ```bash
  docker ps -a
  ```
- **컨테이너 재시작**:
  ```bash
  docker restart <컨테이너 ID>
  ```
- **컨테이너 상세 정보 확인**: `docker inspect <컨테이너 ID>`
- **디스크 사용량 확인**: `docker system df`
- **리소스 정리**: `docker system prune`
---

## 추가 학습 과제
1. FastAPI 애플리케이션에서 MySQL 연결 구현
2. MySQL 초기 데이터를 설정하는 SQL 파일 추가
3. Portainer 등 GUI 기반 Docker 관리 도구 사용해보기

---

## 참고
- [FastAPI 공식 문서](https://fastapi.tiangolo.com/)
- [Docker Compose 공식 문서](https://docs.docker.com/compose/)
- [MySQL 공식 문서](https://dev.mysql.com/doc/)
