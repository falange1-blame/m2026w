%[text] # Behind Story of This Year and the Last Year
%%
%[text] ### Let's add all the 1-digit numbers and get it squared.
n = [0:9] %0 부터 9까지 벡터로 출력 %[output:640aa31d]
%[text] Sum all the values in n and store the result to s.
s = sum(n) %벡터 n의 합  %[output:6f677776]
%[text] Get it squared and store the result to y.
y = s^2 %s의 2승 %[output:0937ea21]
disp("The squre of the sum of 0 to 9 is " + sum(0:9)^2) %[output:8a7cc219]
%[text] In summary,
%[text] $\\left( \\sum\_{n=0}^{9} n \\right)^2 = 2025$
%%
%[text] ### How about add all the cubes of 1-digit numbers.
p = [0:9].^3 %벡터의 각 요소에 제곱승을 할 시 .^ %[output:6740696d]
q = sum(p) %p 요소의 총합 %[output:95143e9f]
disp("The sum of the cubed values of numbers from 0 to 9 is " + sum( (0:9).^3)) %[output:7c1ee989]
%[text] In summary,
%[text] $\\sum\_{n=0}^{9} n^3 = 2025$
%%
%[text] ### Is this just a coincidence?
%[text] Let's add all the numbers from 0 to n and get it squared.
syms n k %기호변수를 만듦
S1 = symsum(k, k, 0, n)^2 %시그마를 계산하는 함수 1번 k: 더할 식 2번 k: 합의 인덱스 변수 n: 0부터 n까지 %[output:8a8750b3]
%[text] Ok, then, how about the sum of cubes from 0 to n.
S2 = symsum(k^3, k, 0, n) %[output:1c0f5025]
%[text] In summary,
%[text] $\\left( \\sum\_{k=0}^{n} k \\right)^2 \\equiv \\sum\_{k=0}^{n} k^3$
%%
%[text] ### Which years follow the same pattern?
yOthers = subs(S1, n, 7:11) %subs(a,b,c): 대입| a라는 식에 b를 c로 대입한다 %[output:69dff1d5]
%[text] ### How to express 2026?
%[text] 먼저 소인수 분해를 해 볼까요?
n = 2026; %n은 2026, ; 출력하지 않고 작업공간에만 저장
p = factor(2026) %소인수분해 primes(a): a 이하의 수 중 소수 출력 isprime(b): b가 소수인지 아닌지 판별 %[output:6392405a]
%%
%[text] 이 소수들은 몇 번째 소수일까요?
allPrimes = primes(p(end)); %1013 이하의 소수들
nPrime = length(p); %2
idx    = zeros(nPrime, 1); %2*1 크기의 0으로 구성된 벡터 [0 0]'
for k=1:nPrime %k: 1부터 2까지 반복
    idx(k) = find( allPrimes == p(k)); %idx(1) = [1 0]' p(1)==2이고 allprimes의 1번째. 벡터 첫 번째 자리 입력
    %idx(2) = [1 170]' p(2)==1023이고 allprimes의 170번째. 벡터 두 번째 자리에 입력
end
idx %[1 170]' %[output:86b2bb3e]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
%[output:640aa31d]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"n","rows":1,"type":"double","value":[["0","1","2","3","4","5","6","7","8","9"]]}}
%---
%[output:6f677776]
%   data: {"dataType":"textualVariable","outputData":{"name":"s","value":"45"}}
%---
%[output:0937ea21]
%   data: {"dataType":"textualVariable","outputData":{"name":"y","value":"2025"}}
%---
%[output:8a7cc219]
%   data: {"dataType":"text","outputData":{"text":"The squre of the sum of 0 to 9 is 2025\n","truncated":false}}
%---
%[output:6740696d]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"p","rows":1,"type":"double","value":[["0","1","8","27","64","125","216","343","512","729"]]}}
%---
%[output:95143e9f]
%   data: {"dataType":"textualVariable","outputData":{"name":"q","value":"2025"}}
%---
%[output:7c1ee989]
%   data: {"dataType":"text","outputData":{"text":"The sum of the cubed values of numbers from 0 to 9 is 2025\n","truncated":false}}
%---
%[output:8a8750b3]
%   data: {"dataType":"symbolic","outputData":{"name":"S1","value":"\\frac{n^2 \\,{{\\left(n+1\\right)}}^2 }{4}"}}
%---
%[output:1c0f5025]
%   data: {"dataType":"symbolic","outputData":{"name":"S2","value":"\\frac{n^2 \\,{{\\left(n+1\\right)}}^2 }{4}"}}
%---
%[output:69dff1d5]
%   data: {"dataType":"symbolic","outputData":{"name":"yOthers","value":"\\left(\\begin{array}{ccccc}\n784 & 1296 & 2025 & 3025 & 4356\n\\end{array}\\right)"}}
%---
%[output:6392405a]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"p","rows":1,"type":"double","value":[["2","1013"]]}}
%---
%[output:86b2bb3e]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"idx","rows":2,"type":"double","value":[["1"],["170"]]}}
%---
