df <- read.csv("c:/data/ozone/ozone.csv")
head(df)
#결측값 여부 확인
is.na(df)

#특정 필드의 결측값 확인
is.na(df$Ozone)

#Ozone 필드에 결측값이 있는 행
df[is.na(df$Ozone),]

#결측값의 개수
sum(is.na(df))

#특정 필드의 결측값 개수
sum(is.na(df$Ozone))

#완성된 샘플 여부
complete.cases(df)

#완성된 샘플
df[complete.cases(df),]

#미완성 샘플(결측값이 있는 샘플)
df[!complete.cases(df),]

#결측값이 포함된 계산 -> NA
mean(df$Ozone)

#결측값을 제외하고 계산
mean(df$Ozone, na.rm=T)

#1~2번 컬럼의 중위수 계산
mapply(median, df[1:2], na.rm=T)

#결측값 제외
df2 <- na.omit(df)
df2

#결측값을 0으로 대체
df3<-df
df3[is.na(df)]<-0
df3

#특정한 필드만 0으로 대체
df4<-df
df4$Ozone[is.na(df4$Ozone)]<-0
df4

#결측값을 평균값으로 대체
df5 <- df
m1 <- mean(df[,1], na.rm=T)
m2 <- mean(df[,2], na.rm=T)
df5[,1][is.na(df[,1])] <- m1
df5[,2][is.na(df[,2])] <- m2
df5

#결측값 시각화
#install.packages('VIM')
#install.packages('mice')
library(VIM)
library(mice)
win.graph()
md.pattern(df)

#결측값의 개수 표시
win.graph()
aggr(df, prop=F, numbers=T) #prop: 백분율 표시, numbers: 샘플개수로 표시

#결측값의 위치를 시각적으로 표현
win.graph()
matrixplot(df) #red: 결측값, dark: 빈도수가 높은 값
