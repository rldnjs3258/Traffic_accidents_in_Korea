# - data2.csv 파일을 전처리한다.
# - 사고유형구분별 사상자수, 사망자수, 중상자수, 경상자수, 부상자수를 구한다.


# 1. 데이터 로드
rawdata <- read.csv(file.choose()) #데이터 로드
summary(rawdata) # summary
head(rawdata) # head


# 2. 데이터 전처리 1 : 사고유형구분별 사상자수 구하기
# 변수 초기화
all_stepless_crossing = 0
all_walking_oldman = 0
all_walking_children = 0
all_schoolzone_children = 0
all_bicycle = 0

unique(rawdata$사고유형구분)
# 사고유형별 사상자수를 더해서 각각 구한다.
for (i in c(1:length(rawdata$사고유형구분))){
  if (rawdata$사고유형구분[i] == '무단횡단'){
    all_stepless_crossing = all_stepless_crossing + rawdata$사상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행노인'){
    all_walking_oldman = all_walking_oldman + rawdata$사상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행어린이'){
    all_walking_children = all_walking_children + rawdata$사상자수[i]
  } else if (rawdata$사고유형구분[i] == '스쿨존어린이'){
    all_schoolzone_children = all_schoolzone_children + rawdata$사상자수[i]
  } else if (rawdata$사고유형구분[i] == '자전거'){
    all_bicycle = all_bicycle + rawdata$사상자수[i]
  }
}

all_data <- data.frame(all_stepless_crossing,
                       all_walking_oldman,
                       all_walking_children,
                       all_schoolzone_children,
                       all_bicycle) # 데이터프레임 만들기


# 3. 데이터 전처리 2 : 사고유형구분별 사망자수 구하기
# 변수 초기화
dead_stepless_crossing = 0
dead_walking_oldman = 0
dead_walking_children = 0
dead_schoolzone_children = 0
dead_bicycle = 0

unique(rawdata$사고유형구분)
# 사고유형별 사망자수를 더해서 각각 구한다.
for (i in c(1:length(rawdata$사고유형구분))){
  if (rawdata$사고유형구분[i] == '무단횡단'){
    dead_stepless_crossing = dead_stepless_crossing + rawdata$사망자수[i]
  } else if (rawdata$사고유형구분[i] == '보행노인'){
    dead_walking_oldman = dead_walking_oldman + rawdata$사망자수[i]
  } else if (rawdata$사고유형구분[i] == '보행어린이'){
    dead_walking_children = dead_walking_children + rawdata$사망자수[i]
  } else if (rawdata$사고유형구분[i] == '스쿨존어린이'){
    dead_schoolzone_children = dead_schoolzone_children + rawdata$사망자수[i]
  } else if (rawdata$사고유형구분[i] == '자전거'){
    dead_bicycle = dead_bicycle + rawdata$사망자수[i]
  }
}

dead_data <- data.frame(dead_stepless_crossing,
                        dead_walking_oldman,
                        dead_walking_children,
                        dead_schoolzone_children,
                        dead_bicycle) # 데이터프레임 만들기


# 4. 데이터 전처리 3 : 사고유형구분별 중상자수 구하기
# 변수 초기화
serious_stepless_crossing = 0
serious_walking_oldman = 0
serious_walking_children = 0
serious_schoolzone_children = 0
serious_bicycle = 0

unique(rawdata$사고유형구분)
# 사고유형별 중상자수를 더해서 각각 구한다.
for (i in c(1:length(rawdata$사고유형구분))){
  if (rawdata$사고유형구분[i] == '무단횡단'){
    serious_stepless_crossing = serious_stepless_crossing + rawdata$중상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행노인'){
    serious_walking_oldman = serious_walking_oldman + rawdata$중상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행어린이'){
    serious_walking_children = serious_walking_children + rawdata$중상자수[i]
  } else if (rawdata$사고유형구분[i] == '스쿨존어린이'){
    serious_schoolzone_children = serious_schoolzone_children + rawdata$중상자수[i]
  } else if (rawdata$사고유형구분[i] == '자전거'){
    serious_bicycle = serious_bicycle + rawdata$중상자수[i]
  }
}

serious_data <- data.frame(serious_stepless_crossing,
                           serious_walking_oldman,
                           serious_walking_children,
                           serious_schoolzone_children,
                           serious_bicycle) # 데이터프레임 만들기


# 5. 데이터 전처리 4 : 사고유형구분별 경상자수 구하기
# 변수 초기화
light_stepless_crossing = 0
light_walking_oldman = 0
light_walking_children = 0
light_schoolzone_children = 0
light_bicycle = 0

unique(rawdata$사고유형구분)
# 사고유형별 경상자수를 더해서 각각 구한다.
for (i in c(1:length(rawdata$사고유형구분))){
  if (rawdata$사고유형구분[i] == '무단횡단'){
    light_stepless_crossing = light_stepless_crossing + rawdata$경상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행노인'){
    light_walking_oldman = light_walking_oldman + rawdata$경상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행어린이'){
    light_walking_children = light_walking_children + rawdata$경상자수[i]
  } else if (rawdata$사고유형구분[i] == '스쿨존어린이'){
    light_schoolzone_children = light_schoolzone_children + rawdata$경상자수[i]
  } else if (rawdata$사고유형구분[i] == '자전거'){
    light_bicycle = light_bicycle + rawdata$경상자수[i]
  }
}

light_data <- data.frame(
  light_stepless_crossing,
  light_walking_oldman,
  light_walking_children,
  light_schoolzone_children,
  light_bicycle) # 데이터프레임 만들기


# 6. 데이터 전처리 5 : 사고유형구분별 부상자수 구하기
# 변수 초기화
injured_stepless_crossing = 0
injured_walking_oldman = 0
injured_walking_children = 0
injured_schoolzone_children = 0
injured_bicycle = 0

unique(rawdata$사고유형구분)
# 사고유형별 부상자수를 더해서 각각 구한다.
for (i in c(1:length(rawdata$사고유형구분))){
  if (rawdata$사고유형구분[i] == '무단횡단'){
    injured_stepless_crossing = injured_stepless_crossing + rawdata$부상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행노인'){
    injured_walking_oldman = injured_walking_oldman + rawdata$부상자수[i]
  } else if (rawdata$사고유형구분[i] == '보행어린이'){
    injured_walking_children = injured_walking_children + rawdata$부상자수[i]
  } else if (rawdata$사고유형구분[i] == '스쿨존어린이'){
    injured_schoolzone_children = injured_schoolzone_children + rawdata$부상자수[i]
  } else if (rawdata$사고유형구분[i] == '자전거'){
    injured_bicycle = injured_bicycle + rawdata$부상자수[i]
  }
}

injured_data <- data.frame(injured_stepless_crossing,
                           injured_walking_oldman,
                           injured_walking_children,
                           injured_schoolzone_children,
                           injured_bicycle) # 데이터프레임 만들기


# 7. 사고유형구분별 사상자수, 사망자수, 중상자수, 경상자수, 부상자수 잘 구했나 확인
a = all_stepless_crossing + all_walking_oldman + all_walking_children + all_schoolzone_children + all_bicycle
b = dead_stepless_crossing + dead_walking_oldman + dead_walking_children + dead_schoolzone_children + dead_bicycle
c = serious_stepless_crossing + serious_walking_oldman + serious_walking_children + serious_schoolzone_children + serious_bicycle
d = light_stepless_crossing + light_walking_oldman + light_walking_children + light_schoolzone_children + light_bicycle
e = injured_stepless_crossing + injured_walking_oldman + injured_walking_children + injured_schoolzone_children + injured_bicycle

a == sum(rawdata$사상자수)
b == sum(rawdata$사망자수)
c == sum(rawdata$중상자수)
d == sum(rawdata$경상자수)
e == sum(rawdata$부상자수)


# 8. 최종 데이터
data <- data.frame(all_data,
                   dead_data,
                   serious_data,
                   light_data,
                   injured_data)


# 9. 저장
write.csv(data, "C:/Users/JIHYE/Desktop/데이터시각화HW - 도로교통공단 교통사고 데이터/2. 데이터_good/Final data/all_dead_serious_light_injured.csv")
