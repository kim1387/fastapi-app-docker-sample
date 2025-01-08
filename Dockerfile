# Python 3.9 슬림 버전을 기반으로 새로운 이미지를 생성합니다.
FROM python:3.9-slim

# 컨테이너 내 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app

# 호스트 머신의 requirements.txt 파일을 컨테이너의 현재 작업 디렉토리로 복사합니다.
COPY requirements.txt .

# requirements.txt에 명시된 Python 패키지들을 설치합니다.
# --no-cache-dir 옵션은 캐시를 남기지 않도록 하여 이미지 크기를 줄여줍니다.
RUN pip install --no-cache-dir -r requirements.txt

# 현재 디렉토리의 모든 파일을 컨테이너의 작업 디렉토리(/app)로 복사합니다.
COPY . .

# 외부에 노출할 포트 번호 8000을 선언합니다.
EXPOSE 8000

# 컨테이너가 시작될 때 실행할 기본 명령을 설정합니다.
# Uvicorn 서버를 실행하며, app 모듈의 app 인스턴스를 0.0.0.0:8000 주소로 호스팅합니다.
# --reload 옵션은 코드 변경 시 자동으로 서버를 재시작하도록 해줍니다.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]



