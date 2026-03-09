%[text] # Basic MATLAB Operations
%[text]   by Yeonwoo Yang
d = datetime('today');
s = string(d,"yyyy-MM-dd");

disp("on " + s); %[output:62c8985f]
%%
%[text] ### Mathematical Expressions
%[text] - Basic Arithmetic Operaions: $-4 + \\frac{7 \\times ( 2 - 5)}{\\pi}$ \
a = -4 + (7*(2-5))/pi %[output:3d0bd726]
%[text] - Powers and Squreroots: $2^3 - \\sqrt{25} + e^3$ \
b = 2^3 - sqrt(25) + exp(3) %[output:3d2373cb]
%[text] - Complex Numbers: $(2+3i)(1-2i)^2$ \
c = (2+3i)*(1-2i)^2 %[output:56cd489b]
%%
%[text] ### Generating Arrays, aka Vectors
%[text] - Zeros and Ones \
z = zeros(1,3) %zeros(a,b) 함수는 a가 row b가 column인 0으로 채운 행렬을 만든다. %[output:42a166e6]
k = ones(4) %ones(a) 함수는 row와 column이 a*a인 1로 채운 행렬을 만든다. %[output:469eee61]
w = zeros(2,4)+9 %ones(2,4)*9 %[output:0a63002b]
%[text] - Evenly Spaced Numbers \
s = linspace(10,20,6)  %s = [10:2:20] %[output:1274f5ea]
sl = length(s) %length(a)는 a의 가장 큰 배열 차원의 길이 %[output:712b6b7f]
m = linspace(10,2,5) %m = [10:-2:2]는 10부터 2까지 -2만큼 줄어드는 벡터 %[output:9b1fecba]
n = linspace(1, 2, 11) %linspace(a,b,c)는 a부터 b까지 c개로 벡터 만들기 %[output:6f3c8613]
%%
%[text] ### Matrix Operations
%[text] - Operations on Matrix with a Scalar \
M = magic(3) %3*3 크기의 마방진 %[output:6af241c2]
M1 = magic(3) %[output:40dd068f]
M2 = magic(3)*2 %[output:401efca0]
M3 = rand(3) %3*3 크기의 유리수 0부터 1까지(0:1) 무작위 행렬 %[output:1fb24bc8]
%[text] - Operations on Two Matrices \
N1 = randi(9, 2, 3) % 2*3 크기의 정수 1부터 9까지의 무작위 행렬 %[output:3798ec5f]
[r,c] = size(N1) %[a,b] = size(A) A 행렬의 row의 크기를 a, column의 크기를 b에 저장 %[output:179d42ad] %[output:457100fe]
N2 = randi(9, 2, 3)  %[output:1bc15931]
N3 = N1 + N2 %randi로 만든 행렬 더하기(column 기준) %[output:83a7feca]
E1 = [2 1; 1 2] % ; 행 바꾸기 %[output:819fae1b]
E2 = [1 1; 1 0] %[output:9f3c4d7d]
E3 = E1 * E2 %[output:974adb53]
%%
%[text] ### Part of Matrices
R = magic(4) % 4*4의 마방진 %[output:87d92465]
r1 = R(2,:) % 2행의 전체를 출력(column 기준) %[output:45ac538c]
r2 = R(2:3, 2:3) %R의 2행부터 3행까지 고르고 2열부터 3열까지 고른 뒤, 교차 지점을 출력 %[output:775203af]
%%
%[text] ### Basic Statistics
k = round(10*sin(0:10)) %[output:024e3ebe]
[min(k), max(k), mean(k), median(k), var(k)] %[output:089a08bd]
k1 =  %[output:3fc41e49]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[output:62c8985f]
%   data: {"dataType":"text","outputData":{"text":"on 2026-03-09\n","truncated":false}}
%---
%[output:3d0bd726]
%   data: {"dataType":"textualVariable","outputData":{"name":"a","value":"-10.6845"}}
%---
%[output:3d2373cb]
%   data: {"dataType":"textualVariable","outputData":{"name":"b","value":"23.0855"}}
%---
%[output:56cd489b]
%   data: {"dataType":"textualVariable","outputData":{"name":"c","value":"6.0000 -17.0000i"}}
%---
%[output:42a166e6]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"z","rows":1,"type":"double","value":[["0","0","0"]]}}
%---
%[output:469eee61]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"k","rows":4,"type":"double","value":[["1","1","1","1"],["1","1","1","1"],["1","1","1","1"],["1","1","1","1"]]}}
%---
%[output:0a63002b]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"w","rows":2,"type":"double","value":[["9","9","9","9"],["9","9","9","9"]]}}
%---
%[output:1274f5ea]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"s","rows":1,"type":"double","value":[["10","12","14","16","18","20"]]}}
%---
%[output:712b6b7f]
%   data: {"dataType":"textualVariable","outputData":{"name":"sl","value":"6"}}
%---
%[output:9b1fecba]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"m","rows":1,"type":"double","value":[["10","8","6","4","2"]]}}
%---
%[output:6f3c8613]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"n","rows":1,"type":"double","value":[["1.0000","1.1000","1.2000","1.3000","1.4000","1.5000","1.6000","1.7000","1.8000","1.9000","2.0000"]]}}
%---
%[output:6af241c2]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M","rows":3,"type":"double","value":[["8","1","6"],["3","5","7"],["4","9","2"]]}}
%---
%[output:40dd068f]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M1","rows":3,"type":"double","value":[["8","1","6"],["3","5","7"],["4","9","2"]]}}
%---
%[output:401efca0]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M2","rows":3,"type":"double","value":[["16","2","12"],["6","10","14"],["8","18","4"]]}}
%---
%[output:1fb24bc8]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"M3","rows":3,"type":"double","value":[["0.7655","0.4898","0.7094"],["0.7952","0.4456","0.7547"],["0.1869","0.6463","0.2760"]]}}
%---
%[output:3798ec5f]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"N1","rows":2,"type":"double","value":[["7","2","5"],["6","2","9"]]}}
%---
%[output:179d42ad]
%   data: {"dataType":"textualVariable","outputData":{"name":"r","value":"2"}}
%---
%[output:457100fe]
%   data: {"dataType":"textualVariable","outputData":{"name":"c","value":"3"}}
%---
%[output:1bc15931]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"N2","rows":2,"type":"double","value":[["4","3","3"],["6","7","5"]]}}
%---
%[output:83a7feca]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"N3","rows":2,"type":"double","value":[["11","5","8"],["12","9","14"]]}}
%---
%[output:819fae1b]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"E1","rows":2,"type":"double","value":[["2","1"],["1","2"]]}}
%---
%[output:9f3c4d7d]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"E2","rows":2,"type":"double","value":[["1","1"],["1","0"]]}}
%---
%[output:974adb53]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"E3","rows":2,"type":"double","value":[["3","2"],["3","1"]]}}
%---
%[output:87d92465]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"R","rows":4,"type":"double","value":[["16","2","3","13"],["5","11","10","8"],["9","7","6","12"],["4","14","15","1"]]}}
%---
%[output:45ac538c]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"r1","rows":1,"type":"double","value":[["5","11","10","8"]]}}
%---
%[output:775203af]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"r2","rows":2,"type":"double","value":[["11","10"],["7","6"]]}}
%---
%[output:024e3ebe]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"k","rows":1,"type":"double","value":[["0","8","9","1","-8","-10","-3","7","10","4","-5"]]}}
%---
%[output:089a08bd]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"ans","rows":1,"type":"double","value":[["-10.0000","10.0000","1.1818","1.0000","49.3636"]]}}
%---
%[output:3fc41e49]
%   data: {"dataType":"matrix","outputData":{"columns":11,"name":"k1","rows":1,"type":"double","value":[["-10","-8","-5","-3","0","1","4","7","8","9","10"]]}}
%---
