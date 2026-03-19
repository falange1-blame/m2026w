%[text] # 3주차 수업
%[text] ## Column Permutation
a = [1 4 7; 2 5 8; 3 6 9] %[output:7afdee28]
b =a(:, end:-1:1) %a의 행 전부와 끝 번째 열을 -1열로 1열까지 %[output:05156558]
c = a(:, [2 3 1]) %a의 열을 재배치 %[output:397133a7]
%%
%[text] ## Reshape
a = 1:12;
a = reshape(a, 3, 4)' %[output:9452aca2]
b = reshape(a, 2, 6) % 항상 coloumn으로 인덱스 되기에 배치도 Coloumn %[output:98ed6ed6]
b = reshape(a, 3, []) % 하나 입력 후, []로 하면 값에 맞춰 자동으로 사이즈 설정 %[output:70822d27]
%%
%[text] ## Mission 3a Reshaping
a = [1:3:10; 2:3:11; 3:3:12]' %[output:8c803575]
b = reshape(a' , 6, 2)'  %[output:47842f4e]
%[text] a의 열 대로 읽었을 때 1:12를 위해서 a' 
%[text] a'을 6 x 2로 기져온 뒤 전체 행렬에 역행렬을 주어 조건(2x6) 충족
b = reshape(a', 4, 3)' %[output:558f0e67]
%[text] a의 열 대로 읽었을 때 1:12를 위해서 a' 
%[text] a'을 4 x 3로 기져온 뒤 전체 행렬에 역행렬을 주어 조건(3 x4) 충족
%%
%[text] ## Replicate Array 행렬 복제
a = 1:12;
a = reshape(a,3,4)' %[output:531f39a9]
b = repmat(a(2:3, :), 2, 2) %[output:6c5b0893]
%[text] a행렬의 2:3행을 추출하여 한 묶음으로 만들어 2x2로 복제한다
%%
%[text] ## Single Indexing
%[text] ### 2차원 array를 마치 1차원 array처럼 보고 indexing 하는 방법
a = 1:12;
a = reshape(a, 3, 4)' %[output:28040506]
sub2ind(size(a), 3, 2) %[output:2715f64c]
%[text] sub2ind: subscript to linear indices
%[text] a의 사이즈를 확인하고 3,2에 위치한 값은 몇 번째인지 알려주는 함수
b = a(7) %[output:81a1a45e]
%[text] a 함수의 열로 세었을 때 7번째의 값
[r, c] = ind2sub(size(a),10) %[output:49ed3050] %[output:0cd84539]
%[text] a의 사이즈를 확인하고 열로 세었을 때, 10번째인 값의 위치를 \[row, coloumn\]에 저장
%%
%[text] ## Logical Arrays 참, 거짓
a = -3:3 %[output:7c15ffba]
abs(a) > 1 %[output:6ab0bc81]
%[text] a의 절댓값이 1보다 크면 1, 작으면 0
a(abs(a) > 1) %[output:4fd4e25a]
%[text] a의 절댓값 1보다 크면 1 $-\>$ a의 위치 중 1의 위치와 동일하면 추출
b = -3:3 %[output:431b6790]
b(logical([1 0 1 0 1 1 1])) %[output:9f818b67]
%%
%[text] ## Scalar Expansion 행렬을 하나의 스칼라로 채우기
a = 3;
b = a(ones(2, 3)) %[output:218c9bf7]
b(:) = 2 %[output:701bb2bf]
b = true(2, 3) %[output:446e8953]
%[text] logical에서 true는 1, false는 0
b(2, 2:3) = false %[output:8fa1d6c7]
%%
%[text] ## Sorting Arrays 정렬
x = randperm(6) %[output:5b8e0057]
%[text] 1부터 6까지의 겹치지 않는 정수의 난수
xs = sort(x) %[output:59aef78f]
%[text] sort() 함수는 오름차순으로 정리 / 'ascend'
xs = sort(x, 'descend') %[output:2f3a68e1]
%[text]  sort() 함수에 'descend'는 내림차순으로 정리 
[xs, idx] = sort(x) %[output:2a5917d0] %[output:8b7736ce]
%[text] xs는 sort(x)의 결과 idx는 원배열(x)의 인덱스 보여주기
%%
%[text] ## Sorting Matrices 정렬(행렬)
a = floor(10*rand(3, 4)) %[output:3db83645]
%[text] 0부터 1사이의 난수에 10을 곱하고 내림
sx = sort(a) %[output:12e7ea6c]
%[text] 각 열을 오름차순으로 정리
sx1 = sort(a, 2) %[output:596e173b]
%[text] 각 행을 오름차순으로 정리
%%
%[text] ## Sort Using Pivot 기준을 이용한 정렬
A = floor(10*rand(3, 4)) %[output:0a80ce0a]
[tmp, idx] = sort(A(:, 3))  %[output:5c028cc6] %[output:5c6b548c]
%[text] tmp: 기준 열 오름차순 정리 / idx: tmp의 원 배열에서의 인덱스
[~, idx] = sort(A(:, 3))  %[output:5977cb55]
As = A(idx, :) %[output:9b91a908]
%%
%[text] ## Sub-array Searching 1/2
A = floor(10*rand(3, 4)) %[output:238e9250]
[r, c] = find(A > 7) %[output:18c26cc9] %[output:0ef0524e]
%[text] A의 행렬에서 7보다 큰 값의 위치를 찾는다 e.g. (r1,c3) (r2,c3)
k = find(A > 7);
A(k) = 0 %[output:8e833734]
%[text] 7보다 큰 A의 값의 위치를 k에 저장;
%[text] A 행렬의 위치 k를 0으로 만들어라
%%
%[text] ## Sub-array Searching 2/2
a = randperm(7) %[output:519e0205]
find(a > 3) %[output:28f74157]
%[text] 3보다 큰 배열의 인덱스를 find
find(a > 3, 2) %[output:5bae8cd1]
%[text] 3보다 큰 배열의 인덱스 중에 앞에서 두번째를 find
find(a > 3, 2, 'last') %[output:4ce0a4fa]
%[text]  3보다 큰 배열의 인덱스 중에 뒤에서 두번째를 find
%%
%[text] ## Minimum and Maximum
a = [3 1 6 2 1 7 5] %[output:9080ac2f]
min(a) %[output:92fc31d2]
%[text] 배열 a의 최소값
max(a) %[output:96a9ad40]
%[text] 배열 a의 최대값
[m, i] = min(a) %[output:8e0bb554] %[output:048b202d]
%[text] \[최소값, 인덱스\]
[M, j] = max(a) %[output:8eac7254] %[output:0b89968a]
%[text] \[최대값, 인덱스\]
find(a == m) %[output:6d75011f]
%[text] a 배열 내에 m(미니멈) 값과 동일한 인덱스를 찾아라(m 포함)
find(a == M) %[output:00194d35]
%[text] a 배열 내에 M(맥시멈) 값과 동일한 인덱스를 찾아라(M 포함)
%%
%[text] ## Min / Max of a Matrix
a = randn(3, 7);
b = 10 * a;
c = floor(b) %[output:70a7bb89]
[m, i] = min(c) %[output:1ff7033d] %[output:66ca452a]
%[text] 행렬 c의 각 열의 \[최소값, 인덱스\]
min(min(c)) %[output:36946493]
%[text] c 행렬의 각 열의 최소값 으로 배열 -\> 그 중 최소값
%%
%[text] ## Flipping and Rotating
a = 1:9;
a = reshape(a, 3, 3)' %[output:39b5900a]
ud = flipud(a) %[output:03c8fb1c]
%[text] 위, 아래 반전
lr = fliplr(a) %[output:0cebd908]
%[text] 좌우 반전
r1 = rot90(a) %[output:1fa53989]
%[text] 시계반대방향 90
r2 = rot90(a, 2) %[output:255f1012]
%[text] 거울 비치는 방식
circd = circshift(a, 1) %[output:8d4d0b8b]
%[text] 아래로 밀기
circu = circshift(a, -1) %[output:147bc505]
%[text] 위로 밀기
circr = circshift(a, [0, 1]) %[output:071f1b40]
%[text] 열은 냅두고 행을 1 방향으로 (우측)
circl = circshift(a, [0, -1]) %[output:425dedf3]
%[text] 열은 냅두고 행을 1 방향으로 (좌측)
%%
%[text] ## Upper, Lower and Diagonal Matrix
a = [1 2 3; 4 5 6; 7 8 9] %[output:2e418707]
d = diag(a) %[output:3ecf8167]
c = diag(diag(a)) %[output:28b8ceec]
%[text] diag(벡터)는 벡터가 주대각인 행렬 (나머지는 0)
U = triu(a) %[output:135367c6]
%[text] a를 UTM으로 만들기
L = tril(a) %[output:6a34796a]
%[text] a를  LTM으로 만들기


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[output:7afdee28]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a","rows":3,"type":"double","value":[["1","4","7"],["2","5","8"],["3","6","9"]]}}
%---
%[output:05156558]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"b","rows":3,"type":"double","value":[["7","4","1"],["8","5","2"],["9","6","3"]]}}
%---
%[output:397133a7]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"c","rows":3,"type":"double","value":[["4","7","1"],["5","8","2"],["6","9","3"]]}}
%---
%[output:9452aca2]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a","rows":4,"type":"double","value":[["1","2","3"],["4","5","6"],["7","8","9"],["10","11","12"]]}}
%---
%[output:98ed6ed6]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"b","rows":2,"type":"double","value":[["1","7","2","8","3","9"],["4","10","5","11","6","12"]]}}
%---
%[output:70822d27]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"b","rows":3,"type":"double","value":[["1","10","8","6"],["4","2","11","9"],["7","5","3","12"]]}}
%---
%[output:8c803575]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a","rows":4,"type":"double","value":[["1","2","3"],["4","5","6"],["7","8","9"],["10","11","12"]]}}
%---
%[output:47842f4e]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"b","rows":2,"type":"double","value":[["1","2","3","4","5","6"],["7","8","9","10","11","12"]]}}
%---
%[output:558f0e67]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"b","rows":3,"type":"double","value":[["1","2","3","4"],["5","6","7","8"],["9","10","11","12"]]}}
%---
%[output:531f39a9]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a","rows":4,"type":"double","value":[["1","2","3"],["4","5","6"],["7","8","9"],["10","11","12"]]}}
%---
%[output:6c5b0893]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"b","rows":4,"type":"double","value":[["4","5","6","4","5","6"],["7","8","9","7","8","9"],["4","5","6","4","5","6"],["7","8","9","7","8","9"]]}}
%---
%[output:28040506]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a","rows":4,"type":"double","value":[["1","2","3"],["4","5","6"],["7","8","9"],["10","11","12"]]}}
%---
%[output:2715f64c]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"7"}}
%---
%[output:81a1a45e]
%   data: {"dataType":"textualVariable","outputData":{"name":"b","value":"8"}}
%---
%[output:49ed3050]
%   data: {"dataType":"textualVariable","outputData":{"name":"r","value":"2"}}
%---
%[output:0cd84539]
%   data: {"dataType":"textualVariable","outputData":{"name":"c","value":"3"}}
%---
%[output:7c15ffba]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"a","rows":1,"type":"double","value":[["-3","-2","-1","0","1","2","3"]]}}
%---
%[output:6ab0bc81]
%   data: {"dataType":"matrix","outputData":{"columns":7,"header":"1×7 logical 배열","name":"ans","rows":1,"type":"logical","value":[["1","1","0","0","0","1","1"]]}}
%---
%[output:4fd4e25a]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["-3","-2","2","3"]]}}
%---
%[output:431b6790]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"b","rows":1,"type":"double","value":[["-3","-2","-1","0","1","2","3"]]}}
%---
%[output:9f818b67]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"ans","rows":1,"type":"double","value":[["-3","-1","1","2","3"]]}}
%---
%[output:218c9bf7]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"b","rows":2,"type":"double","value":[["3","3","3"],["3","3","3"]]}}
%---
%[output:701bb2bf]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"b","rows":2,"type":"double","value":[["2","2","2"],["2","2","2"]]}}
%---
%[output:446e8953]
%   data: {"dataType":"matrix","outputData":{"columns":3,"header":"2×3 logical 배열","name":"b","rows":2,"type":"logical","value":[["1","1","1"],["1","1","1"]]}}
%---
%[output:8fa1d6c7]
%   data: {"dataType":"matrix","outputData":{"columns":3,"header":"2×3 logical 배열","name":"b","rows":2,"type":"logical","value":[["1","1","1"],["1","0","0"]]}}
%---
%[output:5b8e0057]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"x","rows":1,"type":"double","value":[["4","3","1","5","6","2"]]}}
%---
%[output:59aef78f]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"xs","rows":1,"type":"double","value":[["1","2","3","4","5","6"]]}}
%---
%[output:2f3a68e1]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"xs","rows":1,"type":"double","value":[["6","5","4","3","2","1"]]}}
%---
%[output:2a5917d0]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"xs","rows":1,"type":"double","value":[["1","2","3","4","5","6"]]}}
%---
%[output:8b7736ce]
%   data: {"dataType":"matrix","outputData":{"columns":6,"name":"idx","rows":1,"type":"double","value":[["3","6","2","1","4","5"]]}}
%---
%[output:3db83645]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"a","rows":3,"type":"double","value":[["4","3","8","3"],["4","5","7","8"],["4","5","6","5"]]}}
%---
%[output:12e7ea6c]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"sx","rows":3,"type":"double","value":[["4","3","6","3"],["4","5","7","5"],["4","5","8","8"]]}}
%---
%[output:596e173b]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"sx1","rows":3,"type":"double","value":[["3","3","4","8"],["4","5","7","8"],["4","5","5","6"]]}}
%---
%[output:0a80ce0a]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"A","rows":3,"type":"double","value":[["8","1","5","6"],["3","0","4","6"],["6","7","9","8"]]}}
%---
%[output:5c028cc6]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"tmp","rows":3,"type":"double","value":[["4"],["5"],["9"]]}}
%---
%[output:5c6b548c]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"idx","rows":3,"type":"double","value":[["2"],["1"],["3"]]}}
%---
%[output:5977cb55]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"idx","rows":3,"type":"double","value":[["2"],["1"],["3"]]}}
%---
%[output:9b91a908]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"As","rows":3,"type":"double","value":[["3","0","4","6"],["8","1","5","6"],["6","7","9","8"]]}}
%---
%[output:238e9250]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"A","rows":3,"type":"double","value":[["3","3","0","4"],["1","9","7","5"],["4","9","2","9"]]}}
%---
%[output:18c26cc9]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"r","rows":3,"type":"double","value":[["2"],["3"],["3"]]}}
%---
%[output:0ef0524e]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"c","rows":3,"type":"double","value":[["2"],["2"],["4"]]}}
%---
%[output:8e833734]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"A","rows":3,"type":"double","value":[["3","3","0","4"],["1","0","7","5"],["4","0","2","0"]]}}
%---
%[output:519e0205]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"a","rows":1,"type":"double","value":[["7","4","3","5","6","2","1"]]}}
%---
%[output:28f74157]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["1","2","4","5"]]}}
%---
%[output:5bae8cd1]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["1","2"]]}}
%---
%[output:4ce0a4fa]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["4","5"]]}}
%---
%[output:9080ac2f]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"a","rows":1,"type":"double","value":[["3","1","6","2","1","7","5"]]}}
%---
%[output:92fc31d2]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"1"}}
%---
%[output:96a9ad40]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"7"}}
%---
%[output:8e0bb554]
%   data: {"dataType":"textualVariable","outputData":{"name":"m","value":"1"}}
%---
%[output:048b202d]
%   data: {"dataType":"textualVariable","outputData":{"name":"i","value":"2"}}
%---
%[output:8eac7254]
%   data: {"dataType":"textualVariable","outputData":{"name":"M","value":"7"}}
%---
%[output:0b89968a]
%   data: {"dataType":"textualVariable","outputData":{"name":"j","value":"6"}}
%---
%[output:6d75011f]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["2","5"]]}}
%---
%[output:00194d35]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"6"}}
%---
%[output:70a7bb89]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"c","rows":3,"type":"double","value":[["-8","12","8","-3","0","9","2"],["-3","4","-4","-9","-2","3","0"],["11","10","4","6","2","1","-8"]]}}
%---
%[output:1ff7033d]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"m","rows":1,"type":"double","value":[["-8","4","-4","-9","-2","1","-8"]]}}
%---
%[output:66ca452a]
%   data: {"dataType":"matrix","outputData":{"columns":7,"name":"i","rows":1,"type":"double","value":[["1","2","2","2","2","3","3"]]}}
%---
%[output:36946493]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"-9"}}
%---
%[output:39b5900a]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a","rows":3,"type":"double","value":[["1","2","3"],["4","5","6"],["7","8","9"]]}}
%---
%[output:03c8fb1c]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"ud","rows":3,"type":"double","value":[["7","8","9"],["4","5","6"],["1","2","3"]]}}
%---
%[output:0cebd908]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"lr","rows":3,"type":"double","value":[["3","2","1"],["6","5","4"],["9","8","7"]]}}
%---
%[output:1fa53989]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"r1","rows":3,"type":"double","value":[["3","6","9"],["2","5","8"],["1","4","7"]]}}
%---
%[output:255f1012]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"r2","rows":3,"type":"double","value":[["9","8","7"],["6","5","4"],["3","2","1"]]}}
%---
%[output:8d4d0b8b]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"circd","rows":3,"type":"double","value":[["7","8","9"],["1","2","3"],["4","5","6"]]}}
%---
%[output:147bc505]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"circu","rows":3,"type":"double","value":[["4","5","6"],["7","8","9"],["1","2","3"]]}}
%---
%[output:071f1b40]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"circr","rows":3,"type":"double","value":[["3","1","2"],["6","4","5"],["9","7","8"]]}}
%---
%[output:425dedf3]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"circl","rows":3,"type":"double","value":[["2","3","1"],["5","6","4"],["8","9","7"]]}}
%---
%[output:2e418707]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"a","rows":3,"type":"double","value":[["1","2","3"],["4","5","6"],["7","8","9"]]}}
%---
%[output:3ecf8167]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"d","rows":3,"type":"double","value":[["1"],["5"],["9"]]}}
%---
%[output:28b8ceec]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"c","rows":3,"type":"double","value":[["1","0","0"],["0","5","0"],["0","0","9"]]}}
%---
%[output:135367c6]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"U","rows":3,"type":"double","value":[["1","2","3"],["0","5","6"],["0","0","9"]]}}
%---
%[output:6a34796a]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"L","rows":3,"type":"double","value":[["1","0","0"],["4","5","0"],["7","8","9"]]}}
%---
