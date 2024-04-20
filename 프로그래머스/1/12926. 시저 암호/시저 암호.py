
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
def solution(s, n):
    s = list(s)
    answer = ''
    for i in s:
        if i == " ":
            answer += i
        else:
            s = ord(i)
            k = s
            for _ in range(n):
                print(k)
                k += 1
                if int(k) == 91:
                    k = 65
                if int(k) == 123:
                    k = 97
            answer += chr(k)
    return answer