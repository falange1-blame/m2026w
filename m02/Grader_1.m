%[text] # MATLAB Grader 풀기
%[text] ## 네 자리 숫자의 합이 소수
%[text] 
%[text] - 1000년부터 2026년 사이에 있는 연도들 가운데 각 네자리 숫자의 합이 소수인 연도들의 갯수를 구하여 n에 저장하시오. \
years = [1000:2026]'; % 변수 years에 1000부터 2026까지를 열벡터로 초기화 
str = num2str(years) - '0'; % years의 각 자릿수를 숫자로 분리하여 저장
s = sum(str, 2); % 각 연도의 네 자리 숫자의 합을 구해 열벡터 s에 저장
n = sum(isprime(s)) % 변수 n에 s 벡터의 값이 소수인지 판별, 판별값(T = 1, F = 0)을 더하여 n에 초기화 %[output:883f0604]
%[text] num2str: 
%%
%[text] ## 빈 칸 채우기
%[text] - 빈 칸들을 한 글짜씩 모두 채워주세요.
%[text] - M = magic(3)
%[text] - M1 = ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ(11) \
M = magic(3) %[output:77e3c87e]
M1 = "flip(M-1,2)" %[output:69fd8a14]
nCharacters = strlength(M1) %[output:9557ab95]
%[text] flip:
%[text] strlength
%%
%[text] ## 기둥의 높이
%[text] - 어떤 기둥의 그림자의 길이가 10m 였습니다. 그림자 끝과 기둥의 맨 위쪽이 이루는 각이 55도일 때 기둥의 높이를 구하여 변수 h에 저장하시오.
%[text] - tan 55 = h/10
%[text] - h = 10 tan55 \
a = 55; % 각도
b = 10; % 그림자의 길이
h = b * tand(a) %[output:81aff805]
%%
%[text] ## 마방진의 합
%[text] - 2025 x 2025 마방진의 가로, 세로, 대각선의 각각 합은 얼마일까 \
M = magic(2025);
p = sum(M(1, :)) % 가로의 합
% p = sum(M(:, 1)) 세로의 합
% p = sum(diag(M)) 대각선의 합
%[text] diag(): ()안 행렬의 주대각 원소들을 열벡터로 변환
%%
%[text] ## 자리수 구하기
%[text] - 2025의 2025제곱이 몇 자리 수 인지 구하여 변수 n에 저장하시오.  \
x = 2025;
A = x ^ x; 
n = numel(num2str(A) - '0') %[output:8ea47f5f]
x = 2025;
n = floor(x*log10(x)) + 1 %[output:30a7662d]
%%
%[text] ## 100 보다 작은 소수들
%[text] - 100 보다 작은 소수들을 큰 수 부터 차례대로 나열한 행 벡터 p를 만드는 매트랩 명령어를 작성하시오. \
p = fliplr(primes(100)) %[output:2eb06417]
%[text] 
%%
%[text] ## 행렬을 만드는 방법
%[text] - 아래의 6x9 행렬 W를 만들기 위한 가장 단순한 방법을 제시하시오.  \
Z = zeros(3);
M = magic(3);
W = [Z M Z; M Z M] %[output:86e90c65]
%%
%[text] ## 마방진의 대각선 밑 지우기
%[text] - 아래와 같이 6x6 마방진 행렬에서 대각선 바로 아래 원소를 0으로 만든 행렬 M을 만들기 위한 매트랩 스크립트를 제시하시오. \
W = magic(6);
M = W - diag(diag(W, -1), -1) %[output:9c3e7551]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[output:883f0604]
%   data: {"dataType":"textualVariable","outputData":{"name":"n","value":"344"}}
%---
%[output:77e3c87e]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M","rows":3,"type":"double","value":[["8","1","6"],["3","5","7"],["4","9","2"]]}}
%---
%[output:69fd8a14]
%   data: {"dataType":"textualVariable","outputData":{"name":"M1","value":"\"flip(M-1,2)\""}}
%---
%[output:9557ab95]
%   data: {"dataType":"textualVariable","outputData":{"name":"nCharacters","value":"11"}}
%---
%[output:81aff805]
%   data: {"dataType":"textualVariable","outputData":{"name":"h","value":"14.2815"}}
%---
%[output:8ea47f5f]
%   data: {"dataType":"textualVariable","outputData":{"name":"n","value":"3"}}
%---
%[output:30a7662d]
%   data: {"dataType":"textualVariable","outputData":{"name":"n","value":"6696"}}
%---
%[output:2eb06417]
%   data: {"dataType":"matrix","outputData":{"columns":25,"name":"p","rows":1,"type":"double","value":[["97","89","83","79","73","71","67","61","59","53","47","43","41","37","31","29","23","19","17","13","11","7","5","3","2"]]}}
%---
%[output:86e90c65]
%   data: {"dataType":"matrix","outputData":{"columns":9,"name":"W","rows":6,"type":"double","value":[["0","0","0","8","1","6","0","0","0"],["0","0","0","3","5","7","0","0","0"],["0","0","0","4","9","2","0","0","0"],["8","1","6","0","0","0","8","1","6"],["3","5","7","0","0","0","3","5","7"],["4","9","2","0","0","0","4","9","2"]]}}
%---
%[output:9c3e7551]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"M","rows":6,"type":"double","value":[["35","1","6","26","19","24"],["0","32","7","21","23","25"],["31","0","2","22","27","20"],["8","28","0","17","10","15"],["30","5","34","0","14","16"],["4","36","29","13","0","11"]]}}
%---
