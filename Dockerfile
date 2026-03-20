# 1. 베이스 이미지 선택 (가벼운 리눅스 기반의 파이썬)
FROM python:3.9-slim

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 화면에 "Hello Docker"를 출력하는 간단한 코드 작성
RUN echo "print('Hello from GitHub Actions and Docker!')" > hello.py

# 4. 컨테이너가 실행될 때 실행할 명령어
CMD ["python", "hello.py"]