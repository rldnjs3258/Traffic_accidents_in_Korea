# - data2.csv 파일을 이용하여 전처리한다.
# - 사고유형구분별 발생건수 구하기
# - 사고년도별 발생건수 구하기
# - 시도별 발생건수 구하기


# 1. 데이터 로드
rawdata <- read.csv(file.choose()) #데이터 로드
summary(rawdata) # summary
head(rawdata) # head


# 2. 데이터 전처리 1 : 사고유형구분별 발생건수 구하기
sum_stepless_crossing = 0
sum_walking_oldman = 0
sum_walking_children = 0
sum_schoolzone_children = 0
sum_bicycle = 0

unique(rawdata$사고유형구분)
for (i in c(1:length(rawdata$사고유형구분))){
  if (rawdata$사고유형구분[i] == '무단횡단'){
    sum_stepless_crossing = sum_stepless_crossing + rawdata$발생건수[i]
  } else if (rawdata$사고유형구분[i] == '보행노인'){
    sum_walking_oldman = sum_walking_oldman + rawdata$발생건수[i]
  } else if (rawdata$사고유형구분[i] == '보행어린이'){
    sum_walking_children = sum_walking_children + rawdata$발생건수[i]
  } else if (rawdata$사고유형구분[i] == '스쿨존어린이'){
    sum_schoolzone_children = sum_schoolzone_children + rawdata$발생건수[i]
  } else if (rawdata$사고유형구분[i] == '자전거'){
    sum_bicycle = sum_bicycle + rawdata$발생건수[i]
  }
}

sum_stepless_crossing
sum_walking_oldman
sum_walking_children
sum_schoolzone_children
sum_bicycle

accident_data <- data.frame(sum_stepless_crossing,
                            sum_walking_oldman,
                            sum_walking_children,
                            sum_schoolzone_children,
                            sum_bicycle) # 데이터프레임 만들기


# 3. 데이터 전처리 2 : 사고년도별 발생건수 구하기
sum_2012 = 0
sum_2013 = 0
sum_2014 = 0
sum_2015 = 0
sum_2016 = 0
sum_2017 = 0
sum_2018 = 0

unique(rawdata$사고년도)
for (i in c(1:length(rawdata$사고년도))){
  if (rawdata$사고년도[i] == 2012){
    sum_2012 = sum_2012 + rawdata$발생건수[i]
  } else if (rawdata$사고년도[i] == 2013){
    sum_2013 = sum_2013 + rawdata$발생건수[i]
  } else if (rawdata$사고년도[i] == 2014){
    sum_2014 = sum_2014 + rawdata$발생건수[i]
  } else if (rawdata$사고년도[i] == 2015){
    sum_2015 = sum_2015 + rawdata$발생건수[i]
  } else if (rawdata$사고년도[i] == 2016){
    sum_2016 = sum_2016 + rawdata$발생건수[i]
  } else if (rawdata$사고년도[i] == 2017){
    sum_2017 = sum_2017 + rawdata$발생건수[i]
  } else if (rawdata$사고년도[i] == 2018){
    sum_2018 = sum_2018 + rawdata$발생건수[i]
  }
}

sum_2012
sum_2013
sum_2014
sum_2015
sum_2016
sum_2017
sum_2018

year_data <- data.frame(sum_2012,
                        sum_2013,
                        sum_2014,
                        sum_2015,
                        sum_2016,
                        sum_2017,
                        sum_2018) # 데이터프레임 만들기


# 4. 데이터 전처리 3 : 시도별 발생건수 구하기
sum_Seoul = 0
sum_Busan = 0
sum_Daegu = 0
sum_Gwangju = 0
sum_Daejeon = 0
sum_Gyeonggi = 0
sum_Gangwon = 0
sum_Jeollanam_do = 0
sum_Gyeongsangbuk_do = 0
sum_Gyeongsangnam_do = 0
sum_Jeju = 0
sum_Incheon = 0
sum_Ulsan = 0
sum_Chungcheongbuk_do = 0
sum_Chungcheongnam_do = 0
sum_Jeollabuk_do = 0
sum_Sejong = 0

unique(rawdata$시도)
for (i in c(1:length(rawdata$시도))){
  if (rawdata$시도[i] == '서울'){
    sum_Seoul = sum_Seoul + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '부산'){
    sum_Busan = sum_Busan + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '대구'){
    sum_Daegu = sum_Daegu + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '광주'){
    sum_Gwangju = sum_Gwangju + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '대전'){
    sum_Daejeon = sum_Daejeon + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '경기'){
    sum_Gyeonggi = sum_Gyeonggi + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '강원'){
    sum_Gangwon = sum_Gangwon + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '전라남도'){
    sum_Jeollanam_do = sum_Jeollanam_do + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '경상북도'){
    sum_Gyeongsangbuk_do = sum_Gyeongsangbuk_do + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '경상남도'){
    sum_Gyeongsangnam_do = sum_Gyeongsangnam_do + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '제주'){
    sum_Jeju = sum_Jeju + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '인천'){
    sum_Incheon = sum_Incheon + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '울산'){
    sum_Ulsan = sum_Ulsan + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '충청북도'){
    sum_Chungcheongbuk_do = sum_Chungcheongbuk_do + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '충청남도'){
    sum_Chungcheongnam_do = sum_Chungcheongnam_do + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '전라북도'){
    sum_Jeollabuk_do = sum_Jeollabuk_do + rawdata$발생건수[i]
  } else if (rawdata$시도[i] == '세종특별자치시'){
    sum_Sejong = sum_Sejong + rawdata$발생건수[i]
  }
}

sum_Seoul
sum_Busan
sum_Daegu
sum_Gwangju
sum_Daejeon
sum_Gyeonggi
sum_Gangwon
sum_Jeollanam_do
sum_Gyeongsangbuk_do
sum_Gyeongsangnam_do
sum_Jeju
sum_Incheon
sum_Ulsan
sum_Chungcheongbuk_do
sum_Chungcheongnam_do
sum_Jeollabuk_do
sum_Sejong

city_data <- data.frame(sum_Seoul,
                        sum_Busan,
                        sum_Daegu,
                        sum_Gwangju,
                        sum_Daejeon,
                        sum_Gyeonggi,
                        sum_Gangwon,
                        sum_Jeollanam_do,
                        sum_Gyeongsangbuk_do,
                        sum_Gyeongsangnam_do,
                        sum_Jeju,
                        sum_Incheon,
                        sum_Ulsan,
                        sum_Chungcheongbuk_do,
                        sum_Chungcheongnam_do,
                        sum_Jeollabuk_do,
                        sum_Sejong) # 데이터프레임 만들기


# 5. 데이터 전처리 정확한지 확인하기
#  - 세 값 모두 49242로 같다. 데이터 전처리가 정확함을 알 수 있다.
sum_2012 + sum_2013 + sum_2014 + sum_2015 + sum_2016 + sum_2017 + sum_2018
sum_stepless_crossing + sum_walking_oldman + sum_walking_children + sum_schoolzone_children + sum_bicycle
sum_Seoul + sum_Busan + sum_Daegu + sum_Gwangju + sum_Daejeon + sum_Gyeonggi + sum_Gangwon + sum_Jeollanam_do + sum_Gyeongsangbuk_do + sum_Gyeongsangnam_do + sum_Jeju + sum_Incheon + sum_Ulsan + sum_Chungcheongbuk_do + sum_Chungcheongnam_do + sum_Jeollabuk_do + sum_Sejong


# 6. 저장
write.csv(accident_data, "C:/Users/JIHYE/Desktop/데이터시각화HW - 도로교통공단 교통사고 데이터/2. 데이터/Final data/accident.csv")
write.csv(year_data, "C:/Users/JIHYE/Desktop/데이터시각화HW - 도로교통공단 교통사고 데이터/2. 데이터/Final data/year.csv")
write.csv(city_data, "C:/Users/JIHYE/Desktop/데이터시각화HW - 도로교통공단 교통사고 데이터/2. 데이터/Final data/city.csv")