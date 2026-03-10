%[text] # 배열 행렬 만들기
%[text] 이름: 양연우
%[text] - 벡터와 행렬을 만드는 방법
%[text] - 행렬 연산
%[text] - 행렬의 일부
%[text] - 그래프
%[text] - 소리 파일 다루기 \
%%
%[text] ## 간단한 배열
%[text] - 벡터: 열벡처, 행벡터
%[text] - 행렬: 2차원 배열 \
m = [1 4 2 5] % 행 벡터, row vector %[output:921ed5af]
v = [1; 6; -1; 3] % 열 벡터, column vector %[output:52ebe6f4]
M = [1 3 5 7; 2 4 6 8] %[output:1fdb4935]
m = M(2,2) %[output:44125d0e]
%%
%[text] ### 행렬의 크기
%[text] - 명령어: size(nxn을 나타냄), length(가장 긴 길이를 나타냄), numel(요소의 개수) \
M %[output:9a40f18a]
whos M %[output:497d6acf]
[nRows, nCols] = size(M) %[output:2cd8ae75] %[output:20ed882b]
nCol = size(M,2) %[output:148b9904]
nRow = size(M,1) %[output:5d7d4e4c]
N = M' %[output:630eacfe]
ln = length(N) %[output:25042f9c]
kk = numel(M) %[output:2559d99c]
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":11.5}
%---
%[output:921ed5af]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"m","rows":1,"type":"double","value":[["1","4","2","5"]]}}
%---
%[output:52ebe6f4]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"v","rows":4,"type":"double","value":[["1"],["6"],["-1"],["3"]]}}
%---
%[output:1fdb4935]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"M","rows":2,"type":"double","value":[["1","3","5","7"],["2","4","6","8"]]}}
%---
%[output:44125d0e]
%   data: {"dataType":"textualVariable","outputData":{"name":"m","value":"4"}}
%---
%[output:9a40f18a]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"M","rows":2,"type":"double","value":[["1","3","5","7"],["2","4","6","8"]]}}
%---
%[output:497d6acf]
%   data: {"dataType":"text","outputData":{"text":"  Name      Size            Bytes  Class     Attributes\n\n  M         2x4                64  double              \n\n","truncated":false}}
%---
%[output:2cd8ae75]
%   data: {"dataType":"textualVariable","outputData":{"name":"nRows","value":"2"}}
%---
%[output:20ed882b]
%   data: {"dataType":"textualVariable","outputData":{"name":"nCols","value":"4"}}
%---
%[output:148b9904]
%   data: {"dataType":"textualVariable","outputData":{"name":"nCol","value":"4"}}
%---
%[output:5d7d4e4c]
%   data: {"dataType":"textualVariable","outputData":{"name":"nRow","value":"2"}}
%---
%[output:630eacfe]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"N","rows":4,"type":"double","value":[["1","2"],["3","4"],["5","6"],["7","8"]]}}
%---
%[output:25042f9c]
%   data: {"dataType":"textualVariable","outputData":{"name":"ln","value":"4"}}
%---
%[output:2559d99c]
%   data: {"dataType":"textualVariable","outputData":{"name":"kk","value":"8"}}
%---
