# 조건1: 승객별 운행 소요 시간은 5~50분 사이의 난수로 정함
# 조건2: 소요 시간 5~20분 사이의 승객만 매칭함
# 조건3: 승객 수는 사용자가 입력한 값을 사용

# 출력문 예제
# [o] 1번째 손님 (소요시간 : 15분)
# [ ] 2번째 손님 (소요시간 : 50분)
#           ...
# [o] 50번째 손님 (소요시간 : 16분)
# 총 탑승 승객 : 2분

from random import*
cnt = 0
cus = int(input("승객 수를 입력하세요 : ")) + 1
for i in range(1,cus):
    time = randrange(5,51)
    if 5 <= time <= 20:
        print("[o] {0}번째 손님 (소요시간 : {1}분)".format(i,time))
        cnt += 1
    else: 
        print("[ ] {0}번째 손님 (소요시간 : {1}분)".format(i,time))
print("총 탑승 승객 : {0} 분".format(cnt))