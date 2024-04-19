n, m = map(int, input().split(' '))
str = ''
for i in range(m):
    for j in range(n):
        str += '*'
    str += "\n"
print(str)
