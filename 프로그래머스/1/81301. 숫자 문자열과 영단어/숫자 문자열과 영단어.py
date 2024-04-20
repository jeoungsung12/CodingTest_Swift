def solution(s):
    answer = 0
    l = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    t = ''
    a = ''
    for i in range(len(s)):
        if(s[i] >= '0') & (s[i] <= '9'):
            a += s[i]
        elif(s[i] >= 'a') & (s[i] <= 'z'):
            t += s[i]
        for j in range(len(l)):
            if(t == l[j]):
                if(t == 'zero'):
                    a += '0'
                elif(t == 'one'):
                    a += '1'
                elif(t == 'two'):
                    a += '2'
                elif(t == 'three'):
                    a += '3'
                elif(t == 'four'):
                    a += '4'
                elif(t == 'five'):
                    a += '5'
                elif(t == 'six'):
                    a += '6'
                elif(t == 'seven'):
                    a += '7'
                elif(t == 'eight'):
                    a += '8'
                elif(t == 'nine'):
                    a += '9'
                t = ''
            
    answer = int(a)
    return answer