%[text] # 나의 첫 번째 라이브 스크립트
%[text] ## 목록 만들기
%[text] ### 순서가 정해진 목록
%[text] 1. 첫 번째
%[text] 2. 두 번째
%[text] 3. 이렇게 순서가 정해진 목록 \
%[text] ### 순서가 없는 목록
%[text] - 가지
%[text] - 감자
%[text] - 포도 \
%[text] ### 수식
%[text] - 원의 둘레의 길이: l = \\$2\\pi r\\$
%[text] - 원의 면적: $s= \\pi r^2$
%[text] - 1~10000의 합: $&dollar&;n = \\sum\_{k=1}^{10000} k&dollar&;$ \
m =50; %[control:slider:4f3c]{"position":[4,6]}
n= sum(1:m) %[output:6a5d7444]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[control:slider:4f3c]
%   data: {"defaultValue":10,"label":"슬라이더","max":100,"min":10,"run":"Section","runOn":"ValueChanging","step":10}
%---
%[output:6a5d7444]
%   data: {"dataType":"textualVariable","outputData":{"name":"n","value":"1275"}}
%---
