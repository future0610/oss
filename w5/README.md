# 2023 kau 0504   
## 오픈소스 SW 입문      
#      
### 5 주차 : docker 2   
#
#### 주요 명령  
   
<br/>   

22쪽 : 파워셸 명령 
```powershell
# wsl 포트 포워드 설정
netsh interface portproxy add v4tov4 listenport=9090 listenaddress=0.0.0.0 connectport=9090 connectaddress=172.20.8.56 

# 설정 내용 보기
netsh interface portproxy show v4tov4

# 제거하기
netsh interface portproxy delete v4tov4 listenport=9090 listenaddress=0.0.0.0
```

27쪽 : WSL에서 도커 실행 명령 
```sh
# 바인드 마운트와 네트워크 포트 매핑하여 컨테이너 실행
sudo docker run -itd --name miniconda -v ~/projects/w5:/root/projects/w5 -p 8888:8888 continuumio/miniconda3 /bin/bash 

# 컨테이너 내부에서 jupyter lab 실행, 커네이너에 로그인 한 후에 실행
jupyter lab --notebook-dir=/root/projects/w5 --ip='*' --port=8888 --no-browser --allow-root
```
