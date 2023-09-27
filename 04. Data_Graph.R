# table()함수/구분 1개의 인자를 가지고 도수분포표 작성
table(KOTRA2023 $진출대륙명)

# table()함수/2개의 인자를 가지고 교차표를 작성
table(KOTRA2023 $진출대륙명, KOTRA2023 $진출형태)

#  상대도수 계산
ECN <- table(KOTRA2023 $진출대륙명)
prop.table(ECN)

#막대그래프
barplot(table(KOTRA2023 $진출대륙명))

entry <- table(KOTRA2023 $진출대륙명, KOTRA2023 $진출형태)
barplot(entry, legend = TRUE)

#파이차트
pie(table(KOTRA2023 $진출대륙명))
pie(table(KOTRA2023 $투자형태))

colors <-c("red", "orange", "yellow", "green", "blue")
pie(table(KOTRA2023 $투자형태), col=colors, main="해외진출기업의투자형태")

#무지개색
pie(table(KOTRA2023 $투자형태), col=rainbow(12), main="해외진출기업의투자형태")

#적색과황색에치우친색
pie(table(KOTRA2023 $투자형태), col=heat.colors(12), main="해외진출기업의투자형태")

#지구지형색
pie(table(KOTRA2023 $투자형태), col=terrain.colors(12), main="해외진출기업의투자형태")

#앞에서조금더청색에가까운색
pie(table(KOTRA2023 $투자형태), col=topo.colors(12), main="해외진출기업의투자형태")