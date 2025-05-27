FROM python:3.9-slim
WORKDIR /app     # 컨테이너 내부에서 작업할 디렉토리
COPY server.py . # 호스트 머신의 server.py 파일을 컨테이너의 WORKDIR(/app) 디렉토리로 복사
EXPOSE 8080      # 컨테이너가 사용할 네트워크 포트a
CMD ["python", "server.py"]   # 컨테이너 실행 시 기본으로 실행될 명령어
