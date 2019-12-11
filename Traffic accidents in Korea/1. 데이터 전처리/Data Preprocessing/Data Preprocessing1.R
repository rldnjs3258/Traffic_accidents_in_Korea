# <데이터 전처리>
#  - 도로교통공단_교통사고다발지역_20191010.csv의 데이터를 전처리 한다.
#  - 데이터 중 '사고년도, 사고유형구분, 시도시군구명, 사고지역위치명, 발생건수, 사상자수, 사망자수, 중상자수, 경상자수, 부상자수, 위도, 경도' 데이터를 선택한다.
#  - 데이터의 열 이름을 변경한다.
#  - 데이터를 사고년도 기준으로 오름정렬 한다.


# 1. 데이터 로드
rawdata <- read.csv(file.choose()) #데이터 로드
summary(rawdata) # summary
head(rawdata) # head


# 2. 데이터 정제 1 : 열 선택
#  - 데이터 중 사용할 열을 선택하여 정제한다.
data <- data.frame(rawdata$사고년도, rawdata$사고유형구분, rawdata$시도시군구명, rawdata$사고지역위치명, rawdata$발생건수, rawdata$사상자수, rawdata$사망자수, rawdata$중상자수, rawdata$경상자수, rawdata$부상자수, rawdata$위도, rawdata$경도)
summary(data)
head(data)
str(data)


# 3. 데이터 정제 2 : 열 이름 변경
colnames(data) = c("사고년도", "사고유형구분", "시도시군구명", "사고지역위치명", "발생건수", "사상자수", "사망자수", "중상자수", "경상자수", "부상자수", "위도", "경도")
head(data)


# 4. 데이터 정제 3 : 오름정렬
#  - 데이터 중 '사고년도' 기준으로 오름정렬 한다.
data <- data[c(order(data$사고년도)),]
head(data)


# 5. 저장
write.csv(data, "C:/Users/JIHYE/Desktop/데이터 시각화 과제/Data/data.csv")
