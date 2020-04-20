# Traffic_accidents_in_Korea

<br>
<br>

<div>
<img width="1000" src="https://user-images.githubusercontent.com/40679567/70635891-02644380-1c78-11ea-80f3-7b846a090b30.png">
<img width="1000" src="https://user-images.githubusercontent.com/40679567/70635897-03957080-1c78-11ea-90c2-3271e574b2f6.png">
</div>

<br>
<br>

# 1. 웹 페이지
 - [Traffic accidents in Korea](https://rldnjs3258.github.io/Traffic_accidents_in_Korea/index.html)
 - URL : https://rldnjs3258.github.io/Traffic_accidents_in_Korea/index.html

<br>
<hr>
<br>

# 2. 웹 페이지 시각화
## (1) 시각화 구성
  - 기본 시각화 5개 : 링킹, hover시 색 변경 및 value 표시
  - 맵 시각화 2개 : 링킹, 값의 크기에 따른 색 지정, hover 시 색 지역 정보 및 value 표시

<br>

## (2) 시각화 설명
 - Year : 연도별 교통사고 발생건수
 - City : 행정 구역별 교통사고 발생건수
 - Accident type : 교통사고 타입
 - Accident in the same place : 같은 장소에서 교통사고가 발생한 빈도수
 - Month : 월별 교통사고 발생건수
 - Number of traffic accidents in Korea : 행정 구역별 교통사고 발생건수 지도화
 - Population of Korea : 행정 구역별 인구수
 
<br>

## (3) 사용 기술
 - D3.js
 - Google Charts
 - Html
 - Css
 - Javascript

<br>
<hr>
<br>

# 3. 데이터
## (1) 데이터
 - 도로교통공단 교통사고다발지역 데이터 (2012~2018)

<br>

## (2) 데이터 설명
 - 등록일 : 2019-10-10
 - URL : https://www.data.go.kr/dataset/15003493/fileData.do
 - 설명 : 스쿨존어린이, 보행어린이, 보행노인, 무단횡단, 자전거 교통사고 등 주제별로 선정한 2012년 ~ 2018년의 연간 교통사고 다발지역 데이터

<br>

## (3) 데이터 컬럼
 - 사고지역관리번호
 - 사고년도
 - 사고유형구분
 - 위치구분
 - 시도시군구명
 - 사고지역위치
 - 발생건수
 - 사상자수
 - 사망자수
 - 중상자수
 - 경상자수
 - 부상자수
 - 위도
 - 경도
 - 사고다발지역폴리곤정보
 - 데이터기준일자

<br>

## (4) 데이터 전처리
 - 데이터 중 '사고년도, 사고유형구분, 시도시군구명, 사고지역위치명, 발생건수, 사상자수, 사망자수, 중상자수, 경상자수, 부상자수, 위도, 경도' 데이터를 선택했다.
 - 데이터의 열 이름을 정제했다.
 - 데이터를 사고년도 기준으로 오름정렬 했다.
 - 시도시군구명의 가장 앞 단어를 추출하여 ＇시도＇ 열을 만들었다.
 - 사고유형구분별 교통사고 발생건수를 구했다.
 - 사고년도별 교통사고 발생건수를 구했다.
 - 시도별 교통사고 발생건수를 구했다.
 - 사고유형구분별 사상자수, 사망자수, 중상자수, 경상자수, 부상자수를 구했다.

<br>
<hr>
<br>

# 4. 문제제기 및 가설설정
## (1) 문제제기
 - 2019년 기준 한국에서는 교통사고로 인해 사흘에 한 명 꼴로 사망한다.
 - 도로교통공단의 교통사고 데이터를 확인하여 교통사고 현황을 확인할 수 있어야 한다.
 - 도로교통공단의 교통사고 데이터를 확인하여 교통사고를 줄일 수 있는 방법을 모색해야 한다.

<br>

## (2) 가설설정
 - 연도별로 자동차 등록 대수가 늘어남에 따라, 교통사고는 점차 늘어날 것이다.
 - 인구가 많은 도시일 수록 교통사고가 많이 일어날 것이다.
 - 보행중 교통사고가 가장 많을 것이다.

<br>
<hr>
<br>

# 5. 결론
## (1) 가설검정
 - 연도별로 자동차 등록 대수가 늘어남에 따라, 교통사고는 점차 늘어날 것이다. (X)
 - 인구가 많은 도시일 수록 교통사고가 많이 일어날 것이다. (△)
 - 보행중 교통사고가 가장 많을 것이다. (O)

<br>

## (2) 결론
 - 연도별로 교통사고는 점차 감소하는 추이를 보였다. 2015년 잠깐 늘어나는 듯 했으나 그 이후 다시 줄어들었다. 그 원인으로는 음주운전 처벌 강화, 도심 제한속도 인하, 교통사고 사망자 30% 줄이기 업무 협약 등의 노력을 생각해 볼 수 있다. 현재의 교통사고가 감소하는 추세를 유지하기 위한 노력이 필요하다.
 - 교통사고는 서울이 1위, 경기가 2위, 대구가 3위였고, 인구 순위는 경기가 1위, 서울이 2위, 부산이 3위였다. 둘은 비슷한 추이를 보였지만 정비례 하지는 않았다. 
 - 교통사고는 보행노인이 3919로 가장 많았고, 자전거가 두 번째 였다. 보행자 중 보행노인의 교통사고를 줄이기 위한 정책 및 논의가 필요 하다.
