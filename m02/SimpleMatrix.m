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
%%
%[text] ### 그래프
%[text] - 명령어: plot(선그래프 그리는 함수), stem(), bar() \
v %[output:8d1a2456]
h = plot(v,'g--o', "MarkerFaceColor", "g")%% (함수v를, '빨간 선으로 꺾이는 지점을 원으로 표시하라', "면을 채워라", "빨간색으로") %[output:7c383a41] %[output:1b8cf24d]
h. LineWidth =2; %[output:1b8cf24d]
grid on; %% 격자 %[output:1b8cf24d]
xlabel("x") ylabel("y")
%[text] 'r-o': 실선      'r--o':  점선   h=:  속성    LineWidth: 라인의 굵기 수치로 조절
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
%[output:8d1a2456]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"v","rows":4,"type":"double","value":[["1"],["6"],["-1"],["3"]]}}
%---
%[output:7c383a41]
%   data: {"dataType":"textualVariable","outputData":{"name":"h","value":"  <a href=\"matlab:helpPopup('matlab.graphics.chart.primitive.Line')\" style=\"font-weight:bold\">Line<\/a> - 속성 있음:\n\n              Color: [0 1 0]\n          LineStyle: '--'\n          LineWidth: 0.5000\n             Marker: 'o'\n         MarkerSize: 6\n    MarkerFaceColor: [0 1 0]\n              XData: [1 2 3 4]\n              YData: [1 6 -1 3]\n\n  <a href=\"matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.chart.primitive.Line'), else, matlab.graphics.internal.getForDisplay('h'), end\">모든 속성<\/a> 표시\n"}}
%---
%[output:1b8cf24d]
%   data: {"dataType":"image","outputData":{"dataUri":"data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZgAAAD2CAYAAADrspHLAAAAAXNSR0IArs4c6QAAIABJREFUeF7tXTFMHsfWvS7pYkrk33lEorZLlOI5kWtXKbCojFDkKnIiWQJXxJUhiZQgp0ER+pLGMrVr9KxX0UQKtSV4z79F8ySc4kmU\/P\/9kiXLsvt9Ozsze8\/MnnVndu7cOefuPd\/MnZ29dn5+fi68iAARIAJEgAgERuAaBSYwojRHBIgAESACYwQoMAwEIkAEiAARiIIABSYKrDRKBIgAESACFBjGABEgAkSACERBgAITBVYaJQJEgAgQAQoMY4AIEAEiQASiIECBiQIrjRIBIkAEiAAFhjFABIgAESACURCgwESBlUaJABEgAkSAAsMY6BWBf8m\/5LW8ln\/Lv8f93pE78ol80qsP7IwIEIF+EKDA9IPz4Hv5WX6Wp\/JUVGCq19\/kb\/JAHsiGbAweJwJABHJCIBmB2drakp2dnQvsnz17JktLSzlxkeVYVFB+kV\/k6\/\/\/N+1SkRnJaNpt\/DsRIAKJIAAvMGdnZ7K+vi5v376V3d1dmZ2dlYODA1leXhaKDH6U6ayljbgUI9Hlsn\/IP\/AHRg+JABGYigC8wKiYPH78WEajkSwsLFwMSGc0Jycnsrm5KTMzM1MHyhv6R0CXxVZkxbljFRjWZZxhYwMiAIcAvMCokOi1trYGBx4dmozAp\/LpuKDvenEW44oY7ycCmAhAC0yxPPbxxx\/Lhx9+OF4WK64XL17I4uIiJqr0aiwsKjBdr2M5Fi3+8yICRCBdBKAF5vT0VFZXV+Xw8FDu3bt3sRzGGgx+wPkKjBb7tejPiwgQgXQRSEJgFN6iwF9ArUtnKjTV\/9e\/f\/TRR+kykonn7x+9l98f\/d55NB9sfyDXt693bs+GRGAICOzv78v8\/DzsUJMQmJs3b14p5jcV\/wuBOTo6ggV9CI51LfAX2LDQbx8l+kONz5E9D5M8QOcIWmCKGowCXN0tRoHBDnzfJTIKjD2\/6MnLHiF7D9A5ghYYpW9vb0+eP3\/utE0ZHXT7sOzHg667yLS4r0V+XrYI8Dmyxb9N7+gcwQtMUegvL5MVRf6mnWTooLcJnBzu6TqLYYEfg\/3j42Po9X0MlGy9QM918AKj9BVLZa9evbpgc9I2ZXTQbUOy395dZzE8LqZffib1RoHB4aLJE\/Rcl4TAuNKMDrrreFK\/X9\/m16J\/m4sC0walfu6hwPSDs08v6LmOAuPDLtu2RmDSacpVIyzwt4Y16o0UmKjwBjFOgQkCo5sRdNDdRpPX3cXpyu\/fv5fb12+P39bXGU75GH8eFYPBOQUGg4dJXqDnOs5g8GMoSw\/LyatuMwBnMfa0U2DsOZjmAQVmGkIR\/o4OeoQhJ2eymrzKmwHO5Ty58eToMAUGn1X0XMcZDH4MZelhNXnpEtm8zAvFBYduCgwOF02eUGAMOEIH3QASuC6ZvOAoueIQOcLnCD3XcQaDH0NZesjkhU8rOcLniAJjwBE66AaQROmy+Bxyl2UtJq8olAQ1So6CwhnFGHqu4wwmCu35G63b+eUiNExe+DFCjvA5osAYcIQOugEkQbssCvJlo\/o+i24tbvsVSiavoJREMUaOosAa1Ch6ruMMJijd+RtTcdEtxeUXI1VU9IBKfUGy7cXk1RYpu\/vIkR32bXumwLRFKuB96KAHHGqvplRU9K17XR4rX1\/L17IhG06+MHk5wWVyMzkygd2pU\/RcxxmME53Dvrko6pdR6Ho4JZMXfiyRI3yOKDAGHKGDbgCJd5d14uJzZhiTlzcl0Q2Qo+gQe3eAnus4g\/GmOH8DehKyLo2VL9+vTjJ54ccNOcLniAJjwBE66AaQdO4yxI6xus6ZvDpT0ltDctQb1J07Qs91nMF0pjb\/hqF2jMUQGN3JptuiecVDgAITD9tQlikwoZB0sIMOusNQzG4NuWMspMBck2sX5nikf9zwoMDExTeEdfRcxxlMCJYztFFX1O+yHbkJmi7Jq3ykv9r1rQNlSFvQIXXhKKgDNDYVAQrMVIjC34AOevgRh7dYnimodZ8dY6FmMHX1oJCiFx7FtC1SYPD5Q891nMHgx5CZh4XIxJgpdE1edTMrLpXFCZGuHMXxhlbrEKDAGMQFOugGkHTuUj8C5nLGWNuOfJKX+lQ+qib07KrtGHK\/z4ej3LFBGR96ruMMBiVSBuaHT\/Kqey+Hs5jwAeTDUXhvaJEzGJAYQFd1EJhM3fBNXiz4x6fPl6P4HrIH9FzHGQxj1AQB3+TFgn982nw5iu8he6DAGMQAOugGkMB1GSJ5seAfl9YQHMX1kNbRcx1nMIxREwRCJS8W\/OPRF4qjeB7SMgXGIAbQQTeABK7LUMmLBf941IbiKJ6HtIye6ziDYYyaIBAyebHgH4fCkBzF8ZBWKTAGMYAOugEkcF2GTF4s+MehNyRHcTykVfRcxxkMY9QEgdDJq1rwP5dzk3Hl1GlojnLCBmUsFBgDJtBBN4Bk3KUm4Q3ZsOr+Ur8xkldR8Ke4hKE4BkdhPKOVAgH0XMcZzEBitVwMR0jATF74gUeO8DmiwBhwhA5635A0fZXyWI77duWiPyYvM+hbd0yOWkNldiN6ruMMxiw0+uk45lcpfUbA5OWDXj9tyVE\/OPv0QoHxQa9jW3TQOw7LuVmduKiRkYzkgTxwtheyAZNXSDTj2CJHcXANaRU913EGE5JtIFuxP3nsO1QmL18E47cnR\/Ex9u2BAuOLYKX92dmZrK+vy9zcnKytrdVaRwc9MCS15urO6dJZi85eEC4mLwQWJvtAjvA5Qs91yc1g9vb25MmTJ\/Lw4UMKTEP814lLjK9S+jx+TF4+6PXTlhz1g7NPLxQYH\/Qqbd+8eSMrKytycnJCgWnA9bW8Fj06pXypuMT4KqUPtUxePuj105Yc9YOzTy8UGB\/0Sm2LpbHbt2\/Lb7\/9xiWyGlybtiPrsph+VhjpYvJCYqPeF3KEzxEFJhBHW1tb45nLxsaGPH36lAJTwRV1O3IT\/UxegR6MiGbIUURwA5mmwAQA8uDgQB4\/fiyj0Uhu3LjBIn+NuKzIiujyWPn6Wr6GORqmGgZMXgEejMgmyFFkgAOYp8B4gnh6eiqrq6ty\/\/59WVpakra7yIpu9\/f3PT3Ab779wbZsX9++5Ohn\/\/1Mvv3Pt7DOv3v3bvxjwer6+\/\/8Xf75v\/+06j6Jfq05SgIkAyfv3r17qdejoyMDL9p1Cb+LrFga29zclJmZmdYCgwx6O2ra33VNrl26GW3HWN1IrH4dl7FCnuG1Zz\/enVYcxRtRfpY5g\/HgtJi9HB4e1lrRd2F02WxhYeHS39FB94CksWmROFMQFx2ERfLSZUQ99LN86XlsihmvqwhYcEQe3BBAz3XwM5gq3G2XyIY0gyljpMX+FBKmVfIqjvQvMNPddbqFmxcFJsUYoMAEZo0CExhQI3NWAlP+bEExdBUYtG3cRrRcnt0dH8v8\/DyCK\/ShAQEKTODQoMAEBtTInJXA6HD1RdTyjrtUlhX7psqSo77Hmmp\/FBgD5tBBN4AErkvL5FV32gEL\/lwig3tIWjiEnuuSq8G0wFzQQW8zhtzvsRQYxZYF\/+kRZs3RdA95B3quo8AwRk0QQEheLPhPph6BI5PgTKhTCowBWeigG0AC1yVC8mLBnwID92A4OoSe6ziDcSSUt4dBAEFgWPCnwISJZjsrFBgD7NFBN4AErksUgWHBvzk0UDiCC14gh9BzHWcwQMEyJFeQkhcL\/vWRh8TRkJ4Nl7FSYFzQCnQvOuhthll8lfJcztvcntw9aMmLBf+rIYTGUXJB3oPD6LmOM5gegsC1i2rxOUeRQUteLPhTYFyfU4T7KTAGLKCDPgmSpq9Son3y2JdWNIGpFvxzFHVXzhA5ch1D7vej5zrOYIAiMLWvUvpAh5i8tODPM8n+YhWRI5+Yy7EtBcaAVXTQ6yBRcUntq5Q+1DJ5+aDXT1ty1A\/OXXrRfKE\/iL7a\/kq+fPSl3JE7kD+OOIPpwm7gNhosWtSvfqsk5\/OxmLwCB1EEc+QoAqieJjVHaK7QnFG99NDWB\/IA6jPpFBhPwkM0L3aMlW1poIxkFMI8pA0mL0haLjlFjnA4UkH5RX4R\/dE57ULKHRSYaWxF\/nvd7qUhHB\/P5BU5sAKYJ0cBQAxkou5H6CTTKB\/So8AECoAuZoayY6wOGyavLhHTbxty1C\/eTb3V\/Qht4xnCh\/QoMG2YinDPkHaMUWAiBFAPJikwPYDcoovqB\/JaNBnfgjCLocC0ZSvgfXXioua15qLrp0O4mLzwWSZH9hzVnZXn4tWxHIsuuVtdFJiekR\/aduQmeJm8eg68Dt2Row6gBW7iKzDWP1opMIEDoo25a3Lt0m1Iuz7a+B\/iHiavECjGtUGO4uLbxrprcb9q0\/pVBwpMG5Yj3FOIzBB2jNXBx+QVIagCmyRHgQHtYK5rgb\/oyrrQT4HpQHqoJnqCb25njLXFhsmrLVJ295EjO+yLnn2XyCgwEThM8aiYCDBAm0w9eekMFGGXTkySU+coJjZ92u66iwxhdYQzmD4jhX1dIJBy8irX0Kx\/IcYMqZQ5iolL37a7zmKsC\/yKEwWm72hhf2MEUk1e1V+TCL8SY4VUqhzFwsPSrussBmXjEAXGMmoG3Heqyavu16T1Tp1YYZQqR7HwsLZb92nvOp+Q4pECYx01A+0\/5eRV96Bbv9AWI4xS5igGHgg2eZoyAAss8gOQMMWF1JPXEN5lSp0j\/Kegu4fF6co\/bP8g3z\/6fvy2PuLH8jiD6c4xW3ogkHryqns\/IbeCf+oceYRnMk3Rf0xTYJIJpbwczSF55V7wz4GjvJ6aq6OhwBgwjA66ASRwXeaQvHIv+OfAEVzgNzikR8JsyIazu+i5jjMYZ0rrG3QNkEDdJ2cml+SVc8E\/F47QH47yeWPncu7kLgXGCa4wN\/cNuk+AhBlxelZySl65Fvxz4gjxCWn6DLKLyPSd61xx5AzGFbHK\/XXFXpcA8ew+2eY5Ja9cC\/45cYT2oDSJi+4GczmfkAJjwGxfoA\/5k8e+tOaWvHIs+OfGkW\/MhmofSlzUn75yXdexcwbTEbmhf\/K4I2wXzXJLXjkW\/HPjyDdmQ7Rv+uCg68yl8IUCE4IVRxuxQedXKR0Jqbk9x+RVLfinvlSaI0f+kdvdQmhx4QymOxdeLWMLTN1X5pDO\/\/ECr6fGuSYvLfinLixFCOTKUU8hfqmbuhUPvaHrzIUzGAsW\/+wzpsDUiQvKyaWGkDt3zeTlDFnvDchRGMgniYueYedzxcx1Pn4VbZOowbx580ZWVlbk5ORk7Pfc3JyMRiNZWFioxSAW6HW7hXI+rj1EgDXZYPKKiW4Y2+TIH8eY4sIlMn9+5ODgQJaXl+XZs2eytLQ0tri3tydPnjyRFy9eyOLi4pVeYggMd4wFILNkgskrLJ4xrJEjP1SbxCXkl1Bj5Dq\/UV9uDT+D2draGs9cNjc3ZWZmZuz92dmZrK+vj2cya2tr0QWGO8ZChtwftpi8wmMa2iI56o5ok7iEXk6nwHTnqLFlITB6Q1l4igYhQeeOsQgEUmDigBrYKgXGD9A+TngImev8RlvfGn4GU+f26emprK6ujpfHYs5gVFy0qK+1l\/LFHWP+ocjk5Y9hbAvkyB\/hQmRi5QwKjD9HVyzostmrV68aC\/0KenHt7+97efDR\/F+21NBn\/\/1Mvv3Pt1422Vjk3bt3cuPGDUIBjAA5CkPO9gfb8uj3R2GMicjdu3cv2To6OgpmO7Sh5GYwRYG\/XPSvghJa1YtfIdwxFi78+Os4HJaxLJGjWMiGsxs614Xz7A9LSQlMG3HRQcUAfV7mnQ6hC01UbvaYvPAZJUf4HMXIdSFHnYzA6LLYzs7Ope3KTUCggx6SwFRtMXnhM0eO8DlCz3VJCEwhLk3vvcReIsMPs\/Q8ZPLC54wc4XNEgfHkaNpLlXXm0UH3hCSL5kxeIrrs6ntUSMxgIEcx0Q1jGz3XQc9giu3Ih4eHtWzcunVLdnd3ZXZ29tLf0UEPE1ppWxly8iq\/HzGSkejLd4jXkDlC5CPFH9PQAtOVZApMV+T6azfU5FU90l8R11mM7lBEu4bKERoPk\/xBz3UUmJSiKSNfh5y8+njDO0SoDJmjKn760jXijwAKTIhId7SBDrrjcLK8fcjJq+5Ubv0Oux6CiHQNmaMyD+VPHKN96wc913EGg\/RED8iXoSevT+VT0c8sF1fIE3ZDhdHQOVIcy+JS4IokMhSYUNHuYGca6KjTXYchJn\/r0JOXiouKTPlCK\/gPnaM6cVG+kE70mJbrrBPFIGcwxVcpkX6JWAdC3\/0PPXkp3ugF\/yFz1HSKuu8njkM\/ZxSY0Ii2sDcJ9OonjykyLQCNcMuQk1cZTuSC\/1A5SkVcNI4oMBGS0zSTTaDzk8fTkOvv70NNXlWEkQv+Q+Ro0ieOdSMG2k4yCkx\/OeuipzrQ+cljAyImdDnE5NUEB2rBf2gcTRIX1BMXKDAGea0KOj95bEDClC6HlrwmwYFa8B8SRymKC5fIes5rGiT6sH61\/ZV8+ehLuSN3xlNaLaaWt4SqW7G+MNfzkJPtbkjJqw1JiAX\/oXDUJC56hI\/u7EO+OIPpgR1dx9bivQZK9VKBqf5\/CoHTA2ymXQwlebmAjFbwHwJHKYsLZzAuT1eHe5v2qU8yhfhCW4ehJ99kCMnLlaS6gr\/lLsfcOaqryypnKf0A5QzG9SlzuL+65bhNU8sHto1\/Q7kn9+TVlcdywd86VofAUXXWmNrSOQWm65M2pV3dr702XSGe+dTG79zuGULy6sKZ1gpRziQbCkeFyKQmLlwi6\/KEtWxT3drZstn44VWR4WWLwFCSly3Kfr0PiSNdDdmQDT\/ADFpzBhMB9LptnS7doH5\/w2UMqd87pOSVKlfkCJ85CkwEjnwFBu1QwQgQwZtk8oKnSMgRPkcUmAgcdSnul91Ica01AoymJpm8TOFv1Tk5agWT6U0UmAjwdy3wF66w0B+BFEeTTF6OgBncTo4MQHfskgLjCFib232XyCgwbVCOew+TV1x8Q1gnRyFQjGuDAhMJ3667yJA+FhQJmiTMMnnh00SO8DmiwETiqOsshgX+SIQ4mmXycgTM4HZyZAC6Y5cUGEfAXG53ncWkdASECw4p3svkhc9aahwN8VPoFJjIz1HdKbR1XXLnWGQiHM2nlrwch5fF7SlxVD6X0PqInT7Jp8D0gPa005R15pLiW7o9QGfWRUrJywwk445T4UjFRV9d0DxQXEMRGQpMjw9J8Svmh+0f5PtH34+\/BYNyrlOPMCTRVSrJCxlMPUMr5rJvChzpM1\/3vaehbOahwBg8oeigG0AC12UKyQsOtD8dqp4AHGvbPTpHk8RFMVGRyf1Cz3XXzs\/Pz3MjAR303PDuMh705NVlTH21qW5uiXWAKzJHkz5xPBRx0XhDz3UUmL6yAvu5hABy8kKnqm6Lfozt96gcTRIXPch2SBcFxoBtdNANIIHrEjV5wQHV4FDdFv3QhW1EjigulwMCPddxBpNKRsnMT8TklRrE1VpM6II\/GkdN4hJ63CnFAQXGgC100A0ggesSLXnBAdTCobpDX0MW\/JE4orjUBwR6ruMMpsWDzFvCI4CUvMKPrj+LMQv+KBypuMzL\/BVQhzxzKcCgwPT3rF30hA66ASRwXaIkLzhgHB2KWfBH4KhJXHgyxx+Bgp7rOINxfKB5exgEEJJXmJHYW4lV8EfgqFpnUrQpLn\/FHAXG4PlDB90AErguEZIXHCgdHar7lR9i+QiFo7LIUFwuBwl6ruMMpuNDzWZ+CKAkL79R4LSu+4y4b8EfiSMVGYrL1XijwAR6Bre2tmRnZ2dsbW5uTkajkSwsLNRaRwc9ECRJm0FKXkkDWXI+dMGfHOFHBnquS2IGo+JycnIim5ubMjMzI3t7e\/L8+fNGkUEHHT9s43vI5BUe49AFf3IUnqPQFtFzHbzAHBwcyPLysrx48UIWFxfH\/Jydncn6+vp4JrO2tnaFM3TQQwdZivaYvOKwVp3F+LzdT47icBTSKnqugxcYna28fPlSdnd3ZXZ29oKbpv\/XG9BBDxlgqdpi8orDXFHw9xGWwjNyFIejkFbRcx28wFSXxwpyJi2ToYMeMsBStcXkhc8cOcLnCD3XJSswunT2+PHj2jqMgl5c+\/v7+FEyQA\/fvXsnN27cGODI0xkyOcLk6u7du5ccOzo6wnRURLIVGGTQYaOhR8f467hHsDt2RY46AtdjM85gPMHmEpkngKDNmbxAiSm5FYMjrREN4UuTfbFLgfFEmkV+TwBBm8dIXqBDTdat0ByVP3EcYhNCssAGdJwC4wlmXa2F25Q9QQVoHjp5AQwpOxdCclQWlwIoiox\/yFBgPDEsxOTt27cXW5X5oqUnqADNQyYvgOFk6UIojvgVynjhQYEJhC2PigkEJIiZUMkLZDhZuhGCo0niomelsR7jFzoUGD\/8OrVGB73ToDJrFCJ5ZQYJ3HB8OeLMJT6l6LkOfptyF4rQQe8yptza+Cav3PBAHI8PRxSXfhhFz3UUmH7igL1UEPBJXgSzHwS6ctQkLiG+UdPPyNPphQJjwBU66AaQwHXZNXnBDSRhh\/QbK5\/IJ6K1kLqrC0cUl34DAj3XcQbTbzywtz8R6JK8CF44BMpfiRzJSHR2Ub1cOar7sqba5IfCwvFWtUSBiYdto2V00A0ggevSNXnBDSBhh6pH+utQ6t5JceGI4mITEOi5jjMYm7gYfK8uyWvwYAUGoE4M6uojbTn6WX6WFVm54iVnLoGJqzFHgYmP8ZUe0EE3gASuy7bJC87xTBx6Kk\/HS1flS2sxWpMpLheOyktuXBbrL0jQcx1nMP3FAnsqIeCSvAhcHATmZV50NlNc1YK\/K0eFyHDmEoevOqsUmP6wvugJHXQDSOC6dE1ecAPIwKHX8lq0HlO+ygX\/LhzpzGhDNjJAJ40hoOc6zmDSiKPsvOySvLIDAWBAdQX\/YzkWFZ\/f3v8m169flzty59LSGYDbdOFPBCgwBqGADroBJHBdUmAwKGna\/VX1Ts8M040AnJ1g8FZ4gZ7rOIPBipfBeEOBwaG6ruDf5B3fxsfhTT2hwBjwgQ66ASRwXVJgcChxERj1etLb\/zijGoYn6LmOM5hhxCHcKCkwGJQ0vcMyzbvqluZp9\/PvcRCgwMTBdaJVdNANIIHrkgKDQUldkb+NZ5zFtEEp\/j3ouY4zmPgxwB5qEKDA2IdF3TZlF690txk\/GOaCWPh7KTDhMZ1qER30qQMYwA0UGHuSfQWm6ZBM+5ENxwP0XMcZzHBiEWqkFBh7OlyL+1WP+ca+PYcUGAMO0EE3gASuSwqMPSVdC\/yF5yz023OInus4g7GPkUF6QIGxp913iYwCY88hBcaAA3TQDSCB65ICg0FJ111kWtzXIj8vWwTQcx1nMLbxMdjeKTAY1HedxbDAj8EfBcaAB3TQDSCB65ICg0OJ6yyGx8XgcIee6ziDwYmVQXlCgcGiW79IqUX\/aRd3jk1DqN+\/U2D6xXvcGzroBpDAdUmBgaNkLDC6dbn8EbLCS56mjMdXCrmOMxjMuMneKwoMLsUqML\/IL\/L+\/Xu5ff32+G398qeUcT0fnmfoP6YpMMOLSYgRU2AgaJjoBDnC54gCY8AROugGkMB1yeQFR8kVh8gRPkfouY4zGPwYytJDJi98WskRPkcUGAOO0EE3gASuSyYvOEo4g8Gn5IqH6LmOM5gEgyoHlykw+CySI3yOKDAGHKGDbgAJXJdMXnCUcAaDTwlnMAgcUWAQWJjsAwWGHOEjgO8heq7jEhl+DGXpIQUGn1ZyhM8RBcaAI3TQDSCB65LJC44SLpHhU8IlMgSOKDAILHCJDJ8FcpQ6R+i5jktkqUdYov5zBoNPHDnC54gCE4CjN2\/eyMrKipycnIytzc3NyWg0koWFhVrr6KAHgCR5E0xe+BSSI3yO0HMd\/Azm4OBAlpeX5dmzZ7K0tDRmfG9vT548eSIvXryQxcXF5NYl8cM2vodMXvEx9u2BHPkiGL89BcYT462trfHMZXNzU2ZmZsbWzs7OZH19fTyTWVtbo8B4YmzRnMnLAnW3PsmRG14Wd1NgIqBeCIyaLgtP0RU66BEgSc4kOcKnjByRI18E4JfI6gZ4enoqq6ur4+UxzmB8Q8CmPZOXDe4uvZIjF7Rs7kXnKEmB0WWzV69eNRb6FXReRIAIEIEhIHB0dAQ7zOQEpijwl4v+sOjSMSJABIjAgBGAEZhCOAou6rYiU1wGHKkcOhEgAskhACMw05DTZbGdnZ1L25WnteHfiQARIAJEwA6BJASmEJem917s4GPPRIAIEAEi0IQAvMBMe6mS1BIBIkAEiAAmAtACU2xHPjw8rEXv1q1bsru7K7Ozs5jo0isiQASIwIARgBaYAfPCoRMBIkAEkkcgS4HRmo1edS9hJs9YwgMozpUrhsAZKCaZ1cNl7927V3tiBqb3w\/OqWOm5f\/\/+xXmNKChkJzBFzebhw4cUGJQoazigdNoLs0DuD8aVQly++OKLcbIqjmV6+\/Ytl6NBowB5h202AlM8CPqGv14UGJynoelwUuRfXjjo9etJ3eGyheh89913taeX9+sheysjUF4VQHz5PAuBKf\/K+vHHH+Wbb75pPGmZ4YmDwLQz5XA8HbYnFBhM\/ovn5\/PPP5effvpJuETWA0\/TjvLvwQV20RKB6nJMy2a8rUcEiiR28+ZN1mF6xH1aV+U8pwKjh\/9SYKahFuDvFJgAIPZggmv7PYDs0UV5yXnaF2Q9umHTjghorfnly5fjupheFJiOQLo2o8C4ImZzP09nsMG9S691X5XtYodtwiBQXbJErmVmUYMp00aBCRPEMa1QXGKiG8e2cqZCwxeb4+Db1mpdfqPAtEUvwH0UmAAgRjJRXnbhuXKRQI5klgITCVhHs9V3lKrN0d4t4wzGkWDe3g2BQlx+\/fXXxg\/FdbPMVqEQaPpxNu0T5aH6p51uCHAG0w23Tq04g+kEW\/RGfKkyOsRBOijqLeWVtASnAAAAnElEQVQZJpc0g0AbzQgFJhq0Vw1TYHoEu2VX06b1PIqkJZA93VblC23ZpScYkumGApMMVXSUCBABIkAEQiGQXQ0mFDC0QwSIABEgAn4IUGD88GNrIkAEiAARaECAAsPQIAJEgAgQgSgIUGCiwEqjRIAIEAEiQIFhDBABIkAEiEAUBCgwUWClUSJABIgAEaDAMAaIABEgAkQgCgL\/B9c36Us2Bi4nAAAAAElFTkSuQmCC","height":164,"width":272}}
%---
