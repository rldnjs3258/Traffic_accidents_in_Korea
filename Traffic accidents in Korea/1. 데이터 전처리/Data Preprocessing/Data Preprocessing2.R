#  - 시도시군구명 가장 앞 단어를 추출하여 '시도' 열 만들기.


# 1. 데이터 로드
rawdata <- read.csv(file.choose()) #데이터 로드
summary(rawdata) # summary
head(rawdata) # head


# 2. 데이터 전처리 1 : '시도'열 만들기
rawdata$시도시군구명 <- as.character(rawdata$시도시군구명)
시도_list <- character()
for (i in 1:10365){
  a <- strsplit(rawdata$시도시군구명, split = " ")[[i]][1]
  시도_list <- append(시도_list, a)
}


# 3. 데이터 전처리 2 : '시도'열 정제하기
#  - '시도'열 중, 같은 값이지만 다른 라벨이 붙은 데이터들을 같은 라벨로 만든다.
unique(시도_list)
시도_list <- gsub("서울특별시", "서울", 시도_list)
시도_list <- gsub("충북", "충청북도", 시도_list)
시도_list <- gsub("충남", "충청남도", 시도_list)
시도_list <- gsub("대구광역시", "대구", 시도_list)
시도_list <- gsub("부산광역시", "부산", 시도_list)
시도_list <- gsub("제주특별자치도", "제주", 시도_list)
시도_list <- gsub("강원도", "강원", 시도_list)
시도_list <- gsub("전남", "전라남도", 시도_list)
시도_list <- gsub("전북", "전라북도", 시도_list)
시도_list <- gsub("경기도", "경기", 시도_list)
시도_list <- gsub("대전광역시", "대전", 시도_list)
시도_list <- gsub("울산광역시", "울산", 시도_list)
시도_list <- gsub("경북", "경상북도", 시도_list)
시도_list <- gsub("경남", "경상남도", 시도_list)
시도_list <- gsub("광주광역시", "광주", 시도_list)
시도_list <- gsub("인천광역시", "인천", 시도_list)


# 4. 데이터 전처리 2 : 열 선택
data <- data.frame(rawdata$사고년도, rawdata$사고유형구분, rawdata$시도시군구명, rawdata$사고지역위치명, rawdata$발생건수, rawdata$사상자수, rawdata$사망자수, rawdata$중상자수, rawdata$경상자수, rawdata$부상자수, rawdata$위도, rawdata$경도, 시도_list)
head(data)


# 5. 데이터 전처리 3 : 열 이름 정제
colnames(data) = c("사고년도", "사고유형구분", "시도시군구명", "사고지역위치명", "발생건수", "사상자수", "사망자수", "중상자수", "경상자수", "부상자수", "위도", "경도", "시도")


# 6. 저장
write.csv(data, "C:/Users/JIHYE/Desktop/데이터시각화HW - 도로교통공단 교통사고 데이터/2. 데이터/Raw data/data2.csv")
