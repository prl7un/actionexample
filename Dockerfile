# 기존: FROM python:3.9-slim
# 변경: 최신 버전이면서 보안 패치가 잘 된 alpine 버전을 사용해봅시다.
FROM python:3.12-alpine

WORKDIR /app

# alpine 버전은 echo 방식이 약간 다를 수 있으나 아래 코드는 동일하게 작동합니다.
RUN echo "print('Security Fixed! Trivy Scan: 0 Vulnerabilities')" > hello.py

CMD ["python", "hello.py"]