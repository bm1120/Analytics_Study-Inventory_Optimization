# Analytics_Study-Inventory_Optimization
물류 최적화 스터디 코드 정리용

## 프로젝트 구조
``` bash
Analytics_Study-Inventory_Optimization/
├── notebooks/ # Jupyter 노트북 파일들
├── data/ # 데이터 파일들
├── requirements.txt # 파이썬 패키지 목록
├── Dockerfile # 도커 이미지 설정
├── docker-compose.yml # 도커 컴포즈 설정
├── start.sh # Unix 시작 스크립트
├── stop.sh # Unix 중지 스크립트
├── start.bat # Windows 시작 스크립트
└── stop.bat # Windows 중지 스크립트
```

## 환경 설정
본 프로젝트는 Docker를 사용하여 환경을 구성합니다.

### 필수 요구사항
- Docker Desktop (Windows/Mac)
- Docker Compose

## 운영체제별 실행 방법

### Windows
1. Docker Desktop 설치
   - [Docker Desktop for Windows](https://www.docker.com/products/docker-desktop) 다운로드 및 설치
   - WSL2 설치 필요 (Docker Desktop 설치 과정에서 안내됨)

2. 프로젝트 실행
   ```powershell
   # PowerShell 또는 Command Prompt에서
   # 시작
   start.bat

   # 중지
   stop.bat
   ```

   또는 Git Bash 사용 시:
   ```bash
   # 시작
   bash start.sh

   # 중지
   bash stop.sh
   ```

### Mac/Linux
1. Docker Desktop 설치
   - Mac: [Docker Desktop for Mac](https://www.docker.com/products/docker-desktop) 다운로드 및 설치
   - Linux: 패키지 매니저를 통해 Docker 및 Docker Compose 설치

2. 실행 스크립트 권한 설정
   ```bash
   chmod +x start.sh stop.sh
   ```

3. 프로젝트 실행
   ```bash
   # 시작
   ./start.sh

   # 중지
   ./stop.sh
   ```

## 설치된 주요 패키지
- Python 3.11
- pandas
- numpy
- matplotlib
- scikit-learn
- scipy
- seaborn
- SQLAlchemy
- statsmodels
- 기타 패키지는 requirements.txt 참조

## Jupyter Lab 접속
- 브라우저에서 http://localhost:8888 접속
- 비밀번호 없이 바로 접속 가능

## 작업 방법
1. notebooks 폴더에서 Jupyter 노트북 작성
2. data 폴더에 분석에 필요한 데이터 파일 저장
3. 작업 결과물은 notebooks 폴더에 저장됨

## 주의사항
- data 폴더는 .gitignore에 포함되어 있어 버전 관리되지 않습니다
- 필요한 패키지 추가 시 requirements.txt 수정 후 도커 이미지 재빌드 필요
- Windows에서 Git Bash를 사용하지 않는 경우, 스크립트 실행을 위해 PowerShell 사용 권장

## 문제 해결
- Windows에서 권한 오류 발생 시 PowerShell을 관리자 권한으로 실행
- Mac/Linux에서 권한 오류 발생 시 `chmod +x` 명령어로 실행 권한 부여