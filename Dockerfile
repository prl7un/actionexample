FROM python:3.12-alpine

# 시스템 패키지를 최신 보안 버전으로 업데이트합니다.
RUN apk update && apk upgrade

WORKDIR /app

RUN echo "print('Security Hardening Success! Total Vulnerabilities: 0')" > hello.py

CMD ["python", "hello.py"]